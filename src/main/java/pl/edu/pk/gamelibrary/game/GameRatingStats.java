package pl.edu.pk.gamelibrary.game;

/** Statystyki ocen gry: liczba recenzji, średnia i bayesian average. */
public class GameRatingStats {
    private final long reviewCount;
    private final double averageRating;
    private final double bayesianRating;
    /** Surowa (niezaokrąglona) wartość Bayesian — używana do sortowania. */
    private final double bayesianRatingRaw;

    public GameRatingStats(long reviewCount, double averageRating, double bayesianRating, double bayesianRatingRaw) {
        this.reviewCount = reviewCount;
        this.averageRating = averageRating;
        this.bayesianRating = bayesianRating;
        this.bayesianRatingRaw = bayesianRatingRaw;
    }

    public static GameRatingStats empty() {
        return new GameRatingStats(0, 0.0, 0.0, 0.0);
    }

    public long getReviewCount() { return reviewCount; }
    public double getAverageRating() { return averageRating; }
    public double getBayesianRating() { return bayesianRating; }
    public double getBayesianRatingRaw() { return bayesianRatingRaw; }
}
