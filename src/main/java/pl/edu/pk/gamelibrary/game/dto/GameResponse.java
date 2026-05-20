package pl.edu.pk.gamelibrary.game.dto;

import pl.edu.pk.gamelibrary.review.RatingProfile;

import java.util.List;

public class GameResponse {

    private Long id;
    private String title;
    private String description;
    private List<String> genres;
    private List<String> platforms;
    private Integer releaseYear;
    private String coverUrl;

    private boolean hasStory;
    private RatingProfile defaultRatingProfile;

    // Rating stats
    private Double averageRating;
    private long reviewCount;
    private Double bayesianRating;

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public List<String> getGenres() { return genres; }
    public void setGenres(List<String> genres) { this.genres = genres; }

    public List<String> getPlatforms() { return platforms; }
    public void setPlatforms(List<String> platforms) { this.platforms = platforms; }

    public Integer getReleaseYear() { return releaseYear; }
    public void setReleaseYear(Integer releaseYear) { this.releaseYear = releaseYear; }

    public String getCoverUrl() { return coverUrl; }
    public void setCoverUrl(String coverUrl) { this.coverUrl = coverUrl; }

    public boolean isHasStory() { return hasStory; }
    public void setHasStory(boolean hasStory) { this.hasStory = hasStory; }

    public RatingProfile getDefaultRatingProfile() { return defaultRatingProfile; }
    public void setDefaultRatingProfile(RatingProfile defaultRatingProfile) { this.defaultRatingProfile = defaultRatingProfile; }

    public Double getAverageRating() { return averageRating; }
    public void setAverageRating(Double averageRating) { this.averageRating = averageRating; }

    public long getReviewCount() { return reviewCount; }
    public void setReviewCount(long reviewCount) { this.reviewCount = reviewCount; }

    public Double getBayesianRating() { return bayesianRating; }
    public void setBayesianRating(Double bayesianRating) { this.bayesianRating = bayesianRating; }
}
