package pl.edu.pk.gamelibrary.game;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import pl.edu.pk.gamelibrary.common.dto.PagedResponse;
import pl.edu.pk.gamelibrary.game.dto.GameRequest;
import pl.edu.pk.gamelibrary.game.dto.GameResponse;

@Tag(name = "Gry", description = "Przeglądanie i zarządzanie biblioteką gier")
@RestController
@RequestMapping("/api/games")
public class GameController {

    private final GameService gameService;

    public GameController(GameService gameService) {
        this.gameService = gameService;
    }

    @Operation(summary = "Lista gier z filtrowaniem i paginacją",
               description = "Publiczny endpoint. Dostępne filtry: tytuł, gatunek, platforma, lata wydania, obecność fabuły. Sort: title,asc | releaseYear,desc | rating,desc | rating,asc")
    @ApiResponse(responseCode = "200", description = "Lista gier (stronicowana)")
    @GetMapping
    public PagedResponse<GameResponse> getAll(
            @Parameter(description = "Numer strony (od 0)") @RequestParam(defaultValue = "0") int page,
            @Parameter(description = "Rozmiar strony") @RequestParam(defaultValue = "20") int size,
            @Parameter(description = "Sortowanie: title,asc | releaseYear,desc | rating,desc | rating,asc") @RequestParam(defaultValue = "title,asc") String sort,
            @Parameter(description = "Filtr po tytule (częściowy)") @RequestParam(required = false) String title,
            @Parameter(description = "Filtr po gatunku") @RequestParam(required = false) String genre,
            @Parameter(description = "Filtr po platformie") @RequestParam(required = false) String platform,
            @Parameter(description = "Rok wydania od") @RequestParam(required = false) Integer releaseYearFrom,
            @Parameter(description = "Rok wydania do") @RequestParam(required = false) Integer releaseYearTo,
            @Parameter(description = "Czy gra ma fabułę") @RequestParam(required = false) Boolean hasStory
    ) {
        Sort parsedSort = parseSort(sort);
        PageRequest pageable = PageRequest.of(page, size, parsedSort);

        GameSearchCriteria criteria = new GameSearchCriteria();
        criteria.setTitle(title);
        criteria.setGenre(genre);
        criteria.setPlatform(platform);
        criteria.setReleaseYearFrom(releaseYearFrom);
        criteria.setReleaseYearTo(releaseYearTo);
        criteria.setHasStory(hasStory);

        java.util.Map<Long, GameRatingStats> statsMap = gameService.getAllRatingStats();

        Page<GameResponse> result = gameService.searchGames(criteria, pageable)
                .map(g -> {
                    GameResponse res = GameMapper.toResponse(g);
                    GameRatingStats stats = statsMap.getOrDefault(g.getId(), GameRatingStats.empty());
                    res.setReviewCount(stats.getReviewCount());
                    res.setAverageRating(stats.getReviewCount() > 0 ? stats.getAverageRating() : null);
                    res.setBayesianRating(stats.getReviewCount() > 0 ? stats.getBayesianRating() : null);
                    return res;
                });

        return new PagedResponse<>(
                result.getContent(),
                result.getNumber(),
                result.getSize(),
                result.getTotalElements(),
                result.getTotalPages()
        );
    }

    @Operation(summary = "Szczegóły gry po ID", description = "Publiczny endpoint.")
    @ApiResponses({
        @ApiResponse(responseCode = "200", description = "Dane gry"),
        @ApiResponse(responseCode = "404", description = "Gra nie istnieje")
    })
    @GetMapping("/{id}")
    public GameResponse getById(@PathVariable Long id) {
        Game game = gameService.getGameById(id);
        GameResponse res = GameMapper.toResponse(game);
        GameRatingStats stats = gameService.getRatingStatsForGame(id);
        res.setReviewCount(stats.getReviewCount());
        res.setAverageRating(stats.getReviewCount() > 0 ? stats.getAverageRating() : null);
        res.setBayesianRating(stats.getReviewCount() > 0 ? stats.getBayesianRating() : null);
        return res;
    }

    @Operation(summary = "Dodaj nową grę", description = "Wymaga roli **ADMIN**.",
               security = @SecurityRequirement(name = "bearerAuth"))
    @ApiResponses({
        @ApiResponse(responseCode = "201", description = "Gra utworzona"),
        @ApiResponse(responseCode = "400", description = "Błąd walidacji"),
        @ApiResponse(responseCode = "401", description = "Brak tokenu JWT"),
        @ApiResponse(responseCode = "403", description = "Brak roli ADMIN")
    })
    @PostMapping
    public ResponseEntity<GameResponse> create(@Valid @RequestBody GameRequest request) {
        GameResponse response = GameMapper.toResponse(
                gameService.createGame(GameMapper.toEntity(request))
        );
        return ResponseEntity.status(HttpStatus.CREATED).body(response);
    }

    @Operation(summary = "Aktualizuj grę", description = "Wymaga roli **ADMIN**.",
               security = @SecurityRequirement(name = "bearerAuth"))
    @ApiResponses({
        @ApiResponse(responseCode = "200", description = "Gra zaktualizowana"),
        @ApiResponse(responseCode = "404", description = "Gra nie istnieje"),
        @ApiResponse(responseCode = "403", description = "Brak roli ADMIN")
    })
    @PutMapping("/{id}")
    public GameResponse update(@PathVariable Long id, @Valid @RequestBody GameRequest request) {
        return GameMapper.toResponse(
                gameService.updateGame(id, GameMapper.toEntity(request))
        );
    }

    @Operation(summary = "Usuń grę", description = "Wymaga roli **ADMIN**.",
               security = @SecurityRequirement(name = "bearerAuth"))
    @ApiResponses({
        @ApiResponse(responseCode = "204", description = "Gra usunięta"),
        @ApiResponse(responseCode = "404", description = "Gra nie istnieje"),
        @ApiResponse(responseCode = "403", description = "Brak roli ADMIN")
    })
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        gameService.deleteGame(id);
        return ResponseEntity.noContent().build();
    }

    private Sort parseSort(String sort) {
        if (sort == null || sort.isBlank()) {
            return Sort.by(Sort.Direction.ASC, "title");
        }
        String[] parts = sort.split(",", 2);
        String field = parts[0].trim();
        String dir = parts.length > 1 ? parts[1].trim() : "asc";
        Sort.Direction direction = "desc".equalsIgnoreCase(dir) ? Sort.Direction.DESC : Sort.Direction.ASC;
        // "rating" nie jest polem JPA — GameService obsłuży to osobno; przekazujemy Sort żeby wiedzieć kierunek
        return Sort.by(direction, field);
    }
}
