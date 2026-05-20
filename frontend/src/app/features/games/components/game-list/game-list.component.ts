import { Component, OnInit } from '@angular/core';
import { GameService } from '../../../../core/services/game.service';
import { AuthService } from '../../../../core/services/auth.service';
import { GameResponse, GameSearchParams, PagedResponse } from '../../../../core/models';
import { debounceTime, distinctUntilChanged, Subject } from 'rxjs';

@Component({
  selector: 'app-game-list',
  templateUrl: './game-list.component.html',
  styleUrls: ['./game-list.component.scss']
})
export class GameListComponent implements OnInit {
  games: GameResponse[] = [];
  loading = false;
  error = '';

  page = 0;
  size = 10;
  totalPages = 0;
  totalItems = 0;

  filters: GameSearchParams = { sort: 'title,asc' };
  searchInput$ = new Subject<string>();
  isAdmin = false;

  genres = ['RPG', 'Action', 'Adventure', 'Strategy', 'Shooter', 'Sports', 'Simulation', 'Puzzle', 'Horror', 'Racing', 'Action-Adventure', 'Action RPG', 'JRPG', 'Survival Horror', 'Stealth', 'Hack and Slash', 'Metroidvania', 'Platformer', 'Roguelike', 'Run and Gun', 'FPS', 'RTS', 'Fighting', 'Battle Royale', 'TPS', 'MOBA', 'MMORPG', 'Sandbox', 'Survival'];
  platforms = ['PC', 'PlayStation 3', 'PlayStation 4', 'PlayStation 5', 'Xbox 360', 'Xbox One', 'Xbox Series X', 'Nintendo Switch', 'Wii U', 'Mobile'];
  sortOptions = [
    { value: 'title,asc', label: 'Tytuł A-Z' },
    { value: 'title,desc', label: 'Tytuł Z-A' },
    { value: 'releaseYear,desc', label: 'Najnowsze' },
    { value: 'releaseYear,asc', label: 'Najstarsze' },
    { value: 'rating,desc', label: 'Ocena: od najwyższej' },
    { value: 'rating,asc', label: 'Ocena: od najniższej' }
  ];

  constructor(private gameService: GameService, private auth: AuthService) {}

  ngOnInit() {
    this.isAdmin = this.auth.isAdmin();
    this.load();
    this.searchInput$.pipe(debounceTime(400), distinctUntilChanged()).subscribe(val => {
      this.filters.title = val || undefined;
      this.page = 0;
      this.load();
    });
  }

  load() {
    this.loading = true;
    this.error = '';
    this.gameService.getAll({ ...this.filters, page: this.page, size: this.size }).subscribe({
      next: (res: PagedResponse<GameResponse>) => {
        this.games = res.items;
        this.totalPages = res.totalPages;
        this.totalItems = res.totalItems;
        this.loading = false;
      },
      error: () => { this.error = 'Nie udało się wczytać gier.'; this.loading = false; }
    });
  }

  onSearch(val: string) { this.searchInput$.next(val); }

  onFilterChange() { this.page = 0; this.load(); }

  onPageChange(p: number) { this.page = p; this.load(); }

  deleteGame(id: number, title: string) {
    if (!confirm(`Usunąć grę "${title}"?`)) return;
    this.gameService.delete(id).subscribe({ next: () => this.load() });
  }

  clearFilters() {
    this.filters = { sort: 'title,asc' };
    this.page = 0;
    this.load();
  }
}
