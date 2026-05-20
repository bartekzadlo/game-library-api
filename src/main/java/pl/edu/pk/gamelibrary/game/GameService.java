package pl.edu.pk.gamelibrary.game;

import jakarta.transaction.Transactional;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import pl.edu.pk.gamelibrary.exception.ResourceNotFoundException;
import pl.edu.pk.gamelibrary.library.UserGameRepository;
import pl.edu.pk.gamelibrary.review.RatingProfile;
import pl.edu.pk.gamelibrary.review.ReviewRepository;

import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class GameService {

    private final GameRepository gameRepository;
    private final UserGameRepository userGameRepository;
    private final ReviewRepository reviewRepository;

    // Bayesian average parameters:
    // C = prior count (confidence), M = prior mean (global prior)
    private static final double BAYES_C = 5.0;
    private static final double BAYES_M = 7.0;

    public GameService(GameRepository gameRepository,
                       UserGameRepository userGameRepository,
                       ReviewRepository reviewRepository) {
        this.gameRepository = gameRepository;
        this.userGameRepository = userGameRepository;
        this.reviewRepository = reviewRepository;
    }

    public List<Game> getAllGames() {
        return gameRepository.findAll();
    }

    /**
     * Wyszukuje gry z filtrowaniem i paginacją.
     * Gdy sort = "rating,asc" lub "rating,desc" stosuje Bayesian average w Javie.
     */
    public Page<Game> searchGames(GameSearchCriteria criteria, Pageable pageable) {
        String sortField = extractSortField(pageable);
        if ("rating".equalsIgnoreCase(sortField)) {
            return searchGamesSortedByRating(criteria, pageable);
        }
        return gameRepository.findAll(GameSpecifications.byCriteria(criteria), pageable);
    }

    /**
     * Pobiera mapę gameId -> GameRatingStats dla wszystkich gier (jeden zapyt do DB).
     */
    public Map<Long, GameRatingStats> getAllRatingStats() {
        List<Object[]> rows = reviewRepository.findReviewStatsPerGame();
        Map<Long, GameRatingStats> map = new HashMap<>();
        for (Object[] row : rows) {
            Long gameId = ((Number) row[0]).longValue();
            long count   = ((Number) row[1]).longValue();
            double avg   = row[2] != null ? ((Number) row[2]).doubleValue() : 0.0;
            double bayesRaw = computeBayesian(count, avg);
            map.put(gameId, new GameRatingStats(count, round1(avg), round1(bayesRaw), bayesRaw));
        }
        return map;
    }

    public GameRatingStats getRatingStatsForGame(Long gameId) {
        Map<Long, GameRatingStats> all = getAllRatingStats();
        return all.getOrDefault(gameId, GameRatingStats.empty());
    }

    public Game getGameById(Long id) {
        return gameRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Gra", id));
    }

    public Game createGame(Game game) {
        if (game.getTitle() == null || game.getTitle().isBlank()) {
            throw new IllegalArgumentException("Tytuł gry nie może być null ani pusty");
        }
        if (game.getDefaultRatingProfile() == null) {
            game.setDefaultRatingProfile(RatingProfile.DEFAULT);
        }
        return gameRepository.save(game);
    }

    public Game updateGame(Long id, Game updated) {
        Game existing = getGameById(id);
        existing.setTitle(updated.getTitle());
        existing.setDescription(updated.getDescription());
        existing.setGenres(updated.getGenres());
        existing.setPlatforms(updated.getPlatforms());
        existing.setReleaseYear(updated.getReleaseYear());
        existing.setCoverUrl(updated.getCoverUrl());
        existing.setHasStory(updated.isHasStory());
        existing.setDefaultRatingProfile(updated.getDefaultRatingProfile());
        return gameRepository.save(existing);
    }

    @Transactional
    public void deleteGame(Long id) {
        Game game = getGameById(id);
        userGameRepository.findAll((root, query, cb) ->
            cb.equal(root.get("game"), game)
        ).forEach(userGameRepository::delete);
        gameRepository.deleteById(id);
    }

    // ──────────────────────────────────────────────
    // Sortowanie po bayesian rating w Javie
    // ──────────────────────────────────────────────

    private Page<Game> searchGamesSortedByRating(GameSearchCriteria criteria, Pageable pageable) {
        Specification<Game> spec = GameSpecifications.byCriteria(criteria);
        // Pobierz wszystkie pasujące gry (bez paginacji, bez sortowania DB)
        List<Game> allGames = gameRepository.findAll(spec);
        Map<Long, GameRatingStats> statsMap = getAllRatingStats();

        Sort.Direction dir = extractSortDirection(pageable);
        // Gry bez recenzji zawsze na końcu; używamy surowej (niezaokrąglonej) wartości Bayesian
        // żeby uniknąć remisów po zaokrągleniu (np. 8.17 vs 8.25 oba zaokrąglone do 8.2).
        Comparator<Game> comparator;
        if (dir == Sort.Direction.DESC) {
            comparator = Comparator.comparingInt(
                (Game g) -> statsMap.getOrDefault(g.getId(), GameRatingStats.empty()).getReviewCount() == 0 ? 1 : 0
            ).thenComparingDouble(
                (Game g) -> -statsMap.getOrDefault(g.getId(), GameRatingStats.empty()).getBayesianRatingRaw()
            );
        } else {
            comparator = Comparator.comparingInt(
                (Game g) -> statsMap.getOrDefault(g.getId(), GameRatingStats.empty()).getReviewCount() == 0 ? 1 : 0
            ).thenComparingDouble(
                g -> statsMap.getOrDefault(g.getId(), GameRatingStats.empty()).getBayesianRatingRaw()
            );
        }

        List<Game> sorted = allGames.stream().sorted(comparator).toList();

        // Ręczna paginacja
        int totalElements = sorted.size();
        int pageNum = pageable.getPageNumber();
        int pageSize = pageable.getPageSize();
        int from = Math.min(pageNum * pageSize, totalElements);
        int to   = Math.min(from + pageSize, totalElements);
        List<Game> pageContent = sorted.subList(from, to);

        return new PageImpl<>(pageContent, pageable, totalElements);
    }

    // ──────────────────────────────────────────────
    // Helpers
    // ──────────────────────────────────────────────

    /** Bayesian average: (C*M + n*avg) / (C + n) */
    private static double computeBayesian(long n, double avg) {
        return (BAYES_C * BAYES_M + n * avg) / (BAYES_C + n);
    }

    private static double round1(double v) {
        return Math.round(v * 10.0) / 10.0;
    }

    private static String extractSortField(Pageable pageable) {
        for (Sort.Order order : pageable.getSort()) {
            return order.getProperty();
        }
        return "title";
    }

    private static Sort.Direction extractSortDirection(Pageable pageable) {
        for (Sort.Order order : pageable.getSort()) {
            return order.getDirection();
        }
        return Sort.Direction.DESC;
    }
}
