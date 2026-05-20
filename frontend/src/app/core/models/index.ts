export interface AuthResponse {
  token: string;
}

export interface LoginRequest {
  username: string;
  password: string;
}

export interface RegisterRequest {
  username: string;
  password: string;
  role: 'USER' | 'ADMIN';
}

export type RatingProfile = 'DEFAULT' | 'NARRATIVE' | 'MULTIPLAYER';

export interface GameResponse {
  id: number;
  title: string;
  description: string;
  genres: string[];
  platforms: string[];
  releaseYear: number;
  coverUrl: string;
  hasStory: boolean;
  defaultRatingProfile: RatingProfile;
  averageRating: number | null;
  reviewCount: number;
  bayesianRating: number | null;
}

export interface GameRequest {
  title: string;
  description: string;
  genres: string[];
  platforms: string[];
  releaseYear: number;
  coverUrl?: string;
  hasStory: boolean;
  defaultRatingProfile: RatingProfile;
}

export interface PagedResponse<T> {
  items: T[];
  page: number;
  size: number;
  totalItems: number;
  totalPages: number;
}

export interface ReviewResponse {
  id: number;
  gameId: number;
  gameTitle: string;
  authorId: number;
  authorUsername: string;
  title: string;
  content: string;
  gameplayScore: number;
  graphicsScore: number;
  soundScore: number;
  storyScore?: number;
  replayValueScore: number;
  overallScore: number;
  ratingProfile: RatingProfile;
  createdAt: string;
  updatedAt: string;
}

export interface ReviewRequest {
  gameId: number;
  title: string;
  content: string;
  gameplayScore: number;
  graphicsScore: number;
  soundScore: number;
  storyScore?: number;
  replayValueScore: number;
  ratingProfile: RatingProfile;
}

export interface GameRatingStats {
  gameId: number;
  reviewCount: number;
  overallAverage: number;
  gameplayAverage: number;
  graphicsAverage: number;
  soundAverage: number;
  storyAverage?: number;
  replayValueAverage: number;
}

export type LibraryStatus = 'PLAYING' | 'COMPLETED' | 'DROPPED' | 'PLAN_TO_PLAY' | 'ON_HOLD';

export interface UserGameEntry {
  gameId: number;
  gameTitle: string;
  status: LibraryStatus;
  favorite: boolean;
  owned: boolean;
  hoursPlayed: number;
}

export interface LibraryUpsertRequest {
  gameId: number;
  status: LibraryStatus;
  favorite: boolean;
  owned: boolean;
  hoursPlayed: number;
}

export interface GameSearchParams {
  page?: number;
  size?: number;
  sort?: string;
  title?: string;
  genre?: string;
  platform?: string;
  releaseYearFrom?: number;
  releaseYearTo?: number;
  hasStory?: boolean;
}
