# 🎮 game-library-api

REST API do zarządzania biblioteką gier — projekt zaliczeniowy z przedmiotu **Zaawansowane Technologie Programowania Aplikacji Internetowych** (ZTPAI, semestr letni 2025/2026).

Aplikacja umożliwia przeglądanie i zarządzanie kolekcją gier z podziałem na role: użytkownicy mogą przeglądać katalog, dodawać recenzje i prowadzić własną bibliotekę, administratorzy mogą zarządzać katalogiem. Dostęp chroniony jest tokenami JWT.

---

## 🛠️ Stack technologiczny

| Warstwa     | Technologia                        |
|-------------|------------------------------------|
| Backend     | Java 17, Spring Boot 3.4.4         |
| Persistence | Spring Data JPA, H2 (in-memory)    |
| Security    | Spring Security, JWT (JJWT 0.12.6) |
| Walidacja   | Jakarta Validation                 |
| Testy       | JUnit 5, Mockito                   |
| Build       | Maven (Maven Wrapper)              |
| Frontend    | Angular 17                         |

---

## 🚀 Uruchomienie

### Wymagania

- **Java 17+**
- **Maven 3.8+** (lub użyj dołączonego `./mvnw`)

### Kroki

```bash
# Sklonuj repozytorium
git clone https://github.com/bartekzadlo/game-library-api.git
cd game-library-api

# Zbuduj i uruchom (backend + frontend razem)
./mvnw spring-boot:run
```

> **Windows:** użyj `mvnw.cmd spring-boot:run` zamiast `./mvnw spring-boot:run`

> ⏳ Pierwsze uruchomienie trwa dłużej — Maven automatycznie pobiera Node.js i buduje Angular.

Po uruchomieniu:
- **Frontend:** `http://localhost:8080`
- **API:** `http://localhost:8080/api`
- **Swagger UI:** `http://localhost:8080/swagger-ui/index.html`
- **H2 Console:** `http://localhost:8080/h2-console`

### Konsola H2 (baza danych)

Dostępna w trybie deweloperskim pod adresem: `http://localhost:8080/h2-console`

- **JDBC URL:** `jdbc:h2:mem:gamelibrary`
- **User:** `sa`
- **Password:** *(puste)*

---

## ⭐ System oceniania

Każda recenzja składa się z pięciu kryteriów ocenianych w skali 1–10:

| Kryterium     | Waga (DEFAULT) | Opis                                          |
|---------------|---------------|-----------------------------------------------|
| Rozgrywka     | 30%           | Mechaniki, sterowanie, satysfakcja z gry      |
| Grafika       | 20%           | Oprawa wizualna, efekty, design poziomów      |
| Dźwięk        | 15%           | Muzyka, efekty dźwiękowe, dubbing             |
| Fabuła        | 20%           | Narracja, postacie, scenariusz (opcjonalne)   |
| Regrywalność  | 15%           | Zawartość, tryby gry, wartość za cenę         |

Ocena ogólna recenzji jest wyliczana automatycznie jako ważona średnia kryteriów.

### Profile oceniania

Oprócz profilu domyślnego (`DEFAULT`) dostępne są dwa dodatkowe profile z innymi wagami:

- **`NARRATIVE`** — większy nacisk na fabułę i rozgrywkę (dla gier narracyjnych)
- **`MULTIPLAYER`** — większy nacisk na rozgrywkę i regrywalność, fabuła pominięta

### Bayesian rating

Gry w katalogu są sortowane po ocenie z użyciem **Bayesian average**, który uwzględnia liczbę recenzji i chroni przed zawyżaniem ocen gier z małą ich liczbą:

```
bayesian = (C × M + n × avg) / (C + n)
```

gdzie `C = 5` (prior count) i `M = 7.0` (prior mean). Sortowanie używa pełnej precyzji obliczonej wartości, a wyświetlana ocena jest zaokrąglona do jednego miejsca po przecinku.

---

## 📡 Endpointy API

### Autentykacja

| Metoda | Endpoint             | Opis                           | Dostęp    |
|--------|----------------------|--------------------------------|-----------|
| POST   | `/api/auth/register` | Rejestracja nowego użytkownika | Publiczny |
| POST   | `/api/auth/login`    | Logowanie, zwraca token JWT    | Publiczny |

> ⚠️ **Wersja deweloperska:** `/api/auth/register` pozwala przekazać `role` (w tym `ADMIN`).
> To jest celowo zostawione na potrzeby developmentu/testów. W produkcji nie wolno na to pozwalać.

**Przykład rejestracji:**
```http
POST /api/auth/register
Content-Type: application/json

{
  "username": "jan",
  "password": "haslo123",
  "role": "USER"
}
```

**Przykład logowania (odpowiedź):**
```json
{
  "token": "eyJhbGciOiJIUzI1NiJ9..."
}
```

### Gry

> Odczyt jest publiczny. Zapis/edycja/usuwanie wymaga roli `ADMIN`.

| Metoda | Endpoint          | Opis                     | Rola       |
|--------|-------------------|--------------------------|------------|
| GET    | `/api/games`      | Lista wszystkich gier    | Publiczny  |
| GET    | `/api/games/{id}` | Szczegóły gry            | Publiczny  |
| POST   | `/api/games`      | Dodaj nową grę           | ADMIN      |
| PUT    | `/api/games/{id}` | Zaktualizuj grę          | ADMIN      |
| DELETE | `/api/games/{id}` | Usuń grę                 | ADMIN      |

**GET `/api/games` – query params (paginacja + filtrowanie + sortowanie):**

- `page` (domyślnie `0`)
- `size` (domyślnie `20`)
- `sort` (domyślnie `title,asc`) – dostępne wartości: `title,asc`, `title,desc`, `releaseYear,asc`, `releaseYear,desc`, `rating,asc`, `rating,desc`
- `title` (opcjonalnie) – wyszukiwanie po tytule (contains, case-insensitive)
- `genre` (opcjonalnie)
- `platform` (opcjonalnie)
- `releaseYearFrom` / `releaseYearTo` (opcjonalnie)
- `hasStory` (opcjonalnie)

> Sortowanie `rating,desc` / `rating,asc` używa Bayesian average obliczanego w pamięci po pobraniu wszystkich pasujących gier.

**Odpowiedź GET `/api/games` (PagedResponse):**

```json
{
  "items": [
    {
      "id": 1,
      "title": "Hades",
      "averageRating": 9.1,
      "bayesianRating": 8.2,
      "reviewCount": 7
    }
  ],
  "page": 0,
  "size": 20,
  "totalItems": 123,
  "totalPages": 7
}
```

**Przykład ciała zapytania (POST/PUT):**
```json
{
  "title": "The Witcher 3",
  "description": "RPG z otwartym światem",
  "genres": ["RPG", "Action"],
  "platforms": ["PC", "PlayStation 5"],
  "releaseYear": 2015,
  "coverUrl": "https://example.com/cover.jpg",
  "hasStory": true,
  "defaultRatingProfile": "DEFAULT"
}
```

### Recenzje

> Wszystkie endpointy wymagają nagłówka `Authorization: Bearer <token>`.
> Autor recenzji jest pobierany z tokena JWT (nie trzeba przekazywać `authorId` w żądaniu).

| Metoda | Endpoint                             | Opis                                                    |
|--------|--------------------------------------|---------------------------------------------------------|
| GET    | `/api/reviews/game/{gameId}`         | Lista recenzji dla gry                                  |
| GET    | `/api/reviews/{id}`                  | Szczegóły recenzji                                      |
| GET    | `/api/reviews/game/{gameId}/average` | Średnia ocena gry (overall)                             |
| GET    | `/api/reviews/game/{gameId}/stats`   | Statystyki ocen (count/avg/histogram/średnie kryteriów) |
| POST   | `/api/reviews`                       | Dodaj recenzję (1 na grę / użytk.)                      |
| PUT    | `/api/reviews/{id}`                  | Edytuj recenzję (tylko autor)                           |
| DELETE | `/api/reviews/{id}`                  | Usuń recenzję (tylko autor)                             |

**GET `/api/reviews/game/{gameId}` – query params:**

- `page` (domyślnie `0`)
- `size` (domyślnie `20`)
- `sort` (domyślnie `createdAt,desc`) – np. `overallScore,desc`

**Przykład ciała zapytania (POST/PUT):**
```json
{
  "gameId": 1,
  "title": "Świetna gra",
  "content": "Bardzo wciągająca rozgrywka i świetny klimat.",
  "gameplayScore": 9,
  "graphicsScore": 8,
  "soundScore": 9,
  "storyScore": 8,
  "replayValueScore": 8,
  "ratingProfile": "DEFAULT"
}
```

> `storyScore` może być pominięte (null) dla gier bez fabuły. Ocena ogólna jest wtedy liczona z pozostałych kryteriów z renormalizacją wag.

### Admin

> Endpointy dostępne tylko dla roli `ADMIN`.

| Metoda | Endpoint           | Opis                            |
|--------|--------------------|---------------------------------|
| POST   | `/api/admin/users` | Utwórz użytkownika (USER/ADMIN) |

### Biblioteka użytkownika

> Endpointy wymagają nagłówka `Authorization: Bearer <token>`.

| Metoda | Endpoint                | Opis                                                                   |
|--------|-------------------------|------------------------------------------------------------------------|
| GET    | `/api/library`          | Lista pozycji w bibliotece zalogowanego użytkownika (paginacja/filtry) |
| PUT    | `/api/library`          | Dodaje lub aktualizuje pozycję (upsert)                                |
| DELETE | `/api/library/{gameId}` | Usuwa grę z biblioteki                                                 |

**Przykład upsert (PUT `/api/library`):**

```json
{
  "gameId": 1,
  "status": "PLAYING",
  "favorite": true,
  "owned": true,
  "hoursPlayed": 12
}
```

Dostępne statusy: `PLAYING`, `COMPLETED`, `DROPPED`, `PLAN_TO_PLAY`, `ON_HOLD`.

### Kody HTTP

| Kod | Znaczenie                              |
|-----|----------------------------------------|
| 200 | OK                                     |
| 201 | Zasób utworzony                        |
| 204 | Usunięto (brak treści w odpowiedzi)    |
| 400 | Błędne dane wejściowe                  |
| 401 | Brak / nieprawidłowy token JWT         |
| 403 | Brak uprawnień (zła rola)              |
| 404 | Zasób nie znaleziony                   |
| 409 | Konflikt (np. użytkownik już istnieje) |

---

## 🏗️ Struktura projektu

```
src/
├── main/java/pl/edu/pk/gamelibrary/
│   ├── auth/
│   │   ├── controller/   # AuthController
│   │   ├── dto/          # LoginRequest, RegisterRequest, AuthResponse
│   │   ├── model/        # AppUser, Role
│   │   ├── repository/   # UserRepository
│   │   └── service/      # AuthService
│   ├── exception/        # GlobalExceptionHandler, ResourceNotFoundException
│   ├── game/
│   │   ├── dto/          # GameRequest, GameResponse
│   │   ├── Game.java     # Encja JPA
│   │   ├── GameController.java
│   │   ├── GameMapper.java
│   │   ├── GameRatingStats.java
│   │   ├── GameRepository.java
│   │   └── GameService.java
│   ├── library/          # UserGame, LibraryController, LibraryService
│   ├── review/
│   │   ├── dto/          # ReviewRequest, ReviewResponse
│   │   ├── Review.java   # Encja JPA
│   │   ├── ReviewController.java
│   │   ├── ReviewMapper.java
│   │   ├── ReviewRepository.java
│   │   ├── ReviewService.java
│   │   └── RatingProfile.java
│   ├── security/         # JwtAuthFilter, JwtService, SecurityConfig
│   └── util/             # RatingCalculator, Criterion
└── test/
    └── ...               # GameServiceTest, ReviewServiceTest, RatingCalculatorTest

frontend/
└── src/app/
    ├── core/
    │   ├── models/       # Interfejsy TypeScript
    │   ├── services/     # GameService, ReviewService, AuthService, LibraryService
    │   ├── guards/       # AuthGuard
    │   └── interceptors/ # AuthInterceptor (JWT)
    └── features/
        ├── auth/         # Login, Register
        ├── games/        # GameList, GameDetail, GameForm
        └── library/      # LibraryList
```

---

## 🧪 Testy

```bash
./mvnw test
```

Projekt zawiera testy jednostkowe dla `GameService` (Mockito), `ReviewService` oraz `RatingCalculator`.

---

## ⚙️ Konfiguracja

Główna konfiguracja w `src/main/resources/application.properties`.

> ⚠️ **Przed wdrożeniem produkcyjnym** zmień `jwt.secret` na bezpieczny klucz co najmniej 256-bitowy i zastąp H2 bazą danych produkcyjną (np. PostgreSQL).

---

## 🖥️ Frontend (Angular)

Aplikacja frontendowa znajduje się w katalogu `frontend/`.

### Uruchomienie (tryb deweloperski)

```bash
cd frontend
npm install
ng serve
# → http://localhost:4200
```

> Backend musi działać na `http://localhost:8080`.

### Funkcjonalności

- Przeglądanie katalogu gier z filtrowaniem po gatunku, platformie, roku wydania i tytule
- Sortowanie po tytule, roku wydania oraz ocenie (Bayesian average)
- Szczegóły gry: statystyki ocen z podziałem na kryteria, lista recenzji
- Rejestracja i logowanie (JWT)
- Dodawanie i edytowanie recenzji z oceną pięciu kryteriów
- Zarządzanie grami (CRUD) — tylko ADMIN
- Prywatna biblioteka użytkownika ze statusami i oznaczeniem ulubionych