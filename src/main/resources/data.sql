-- Uzytkownicy (tabela: app_users)
INSERT INTO app_users (username, password, role) VALUES ('admin', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z6MyMuKyGZnr.E1V9mjhBFvS', 'ADMIN');
INSERT INTO app_users (username, password, role) VALUES ('john_doe', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z6MyMuKyGZnr.E1V9mjhBFvS', 'USER');
INSERT INTO app_users (username, password, role) VALUES ('jane_smith', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z6MyMuKyGZnr.E1V9mjhBFvS', 'USER');
INSERT INTO app_users (username, password, role) VALUES ('mike_wilson', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z6MyMuKyGZnr.E1V9mjhBFvS', 'USER');
INSERT INTO app_users (username, password, role) VALUES ('sarah_johnson', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z6MyMuKyGZnr.E1V9mjhBFvS', 'USER');
INSERT INTO app_users (username, password, role) VALUES ('alex_brown', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z6MyMuKyGZnr.E1V9mjhBFvS', 'USER');
INSERT INTO app_users (username, password, role) VALUES ('emily_davis', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z6MyMuKyGZnr.E1V9mjhBFvS', 'USER');

-- Gry (tabela: games)
INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('The Witcher 3: Wild Hunt', 'Epic RPG set in a fantasy world where you play as Geralt of Rivia.', 2015, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Cyberpunk 2077', 'Futuristic action RPG set in Night City, a metropolis obsessed with power and body modification.', 2020, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Red Dead Redemption 2', 'Epic story about a gang of outlaws fleeing from the law in Wild West America.', 2018, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('God of War', 'Kratos and his son Atreus embark on a dangerous journey through Norse lands.', 2018, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Elden Ring', 'Souls-like RPG created by FromSoftware in collaboration with George R.R. Martin.', 2022, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Minecraft', 'Iconic sandbox game allowing you to build and explore infinite worlds.', 2011, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Grand Theft Auto V', 'Action game set in fictional Los Santos, an equivalent of Los Angeles.', 2013, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('The Last of Us Part II', 'Continuation of the groundbreaking survival story in a zombie-infested world.', 2020, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Hades', 'Roguelike dungeon crawler set in the Greek mythological world.', 2020, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Portal 2', 'Brilliant puzzle game using portal mechanics.', 2011, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Dark Souls III', 'Third installment of the iconic souls-like series known for high difficulty.', 2016, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Sekiro: Shadows Die Twice', 'Action game set in feudal Japan, featuring a unique combat system.', 2019, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Celeste', 'Challenging 2D platformer with a touching story about fighting depression.', 2018, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Hollow Knight', 'Beautifully drawn metroidvania game set in an underground kingdom of insects.', 2017, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Stardew Valley', 'Farm life simulation with RPG and social elements.', 2016, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('BioShock Infinite', 'FPS with RPG elements set in the flying city of Columbia.', 2013, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Mass Effect 2', 'Second part of the iconic space opera RPG.', 2010, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('The Elder Scrolls V: Skyrim', 'Epic open-world RPG set in the land of Skyrim.', 2011, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Doom Eternal', 'Continuation of the iconic FPS with intense action.', 2020, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Bloodborne', 'Gothic horror souls-like from FromSoftware.', 2015, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Persona 5 Royal', 'Expanded JRPG combining student life with battles in the metaverse.', 2019, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Final Fantasy VII Remake', 'Remake of the iconic JRPG from 1997.', 2020, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Resident Evil Village', 'Survival horror continuing RE7.', 2021, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Death Stranding', 'Unique game from Hideo Kojima about a delivery man in a post-apocalyptic world.', 2019, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Control', 'Supernatural action game at the Federal Bureau of Control.', 2019, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Disco Elysium', 'Revolutionary detective RPG with a unique dialogue system.', 2019, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Undertale', 'Indie RPG where you can spare every enemy.', 2015, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Horizon Zero Dawn', 'Post-apocalyptic world inhabited by mechanical dinosaurs.', 2017, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Ghost of Tsushima', 'Samurai story set in feudal Japan.', 2020, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Spider-Man', 'Spider-Man game from Insomniac Games.', 2018, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Batman: Arkham City', 'Second installment of the Arkham series about the Dark Knight.', 2011, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Metal Gear Solid V', 'Tactical stealth action game from Hideo Kojima.', 2015, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Assassins Creed Valhalla', 'Viking-themed game in the Assassins Creed series.', 2020, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Far Cry 5', 'Open-world FPS set in Montana.', 2018, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Dishonored 2', 'Stealth-action sequel with supernatural powers.', 2016, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Prey', 'Sci-fi FPS on a space station.', 2017, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Wolfenstein II', 'Alternative history where Nazis won WWII.', 2017, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Dying Light 2', 'Parkour and zombies in a post-apocalyptic city.', 2022, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Days Gone', 'Open-world zombie survival game.', 2019, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Monster Hunter World', 'Hunt gigantic monsters solo or in co-op.', 2018, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Nioh 2', 'Souls-like set in feudal Japan.', 2020, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Devil May Cry 5', 'Stylish hack and slash with three playable characters.', 2019, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Bayonetta 2', 'Continuation of the stylish action game.', 2014, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('NieR: Automata', 'Philosophical RPG about androids fighting machines.', 2017, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Outer Wilds', 'Exploration adventure game with a time loop.', 2019, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Subnautica', 'Survival on an alien ocean planet.', 2018, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Return of the Obra Dinn', 'Detective puzzle game with unique graphics.', 2018, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('What Remains of Edith Finch', 'Narrative adventure game about a cursed family.', 2017, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Firewatch', 'First-person adventure in the Wyoming wilderness.', 2016, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('A Plague Tale: Innocence', 'Adventure game set in medieval France during a plague.', 2019, null, true, 'NARRATIVE');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Ori and the Blind Forest', 'Beautiful platformer with an emotional story.', 2015, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Ori and the Will of the Wisps', 'Continuation of Ori with improved mechanics.', 2020, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Cuphead', 'Difficult run and gun in 1930s cartoon style.', 2017, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Dead Cells', 'Roguelike metroidvania with dynamic combat.', 2018, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Enter the Gungeon', 'Bullet hell roguelike dungeon crawler.', 2016, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Slay the Spire', 'Roguelike deck-building card game.', 2019, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Into the Breach', 'Turn-based strategy about mechs fighting aliens.', 2018, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('XCOM 2', 'Turn-based tactical strategy about fighting alien invasion.', 2016, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Civilization VI', 'Turn-based 4X strategy about building civilizations.', 2016, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Total War: Warhammer II', 'RTS/turn-based strategy in the Warhammer universe.', 2017, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('StarCraft II', 'Iconic real-time sci-fi strategy.', 2010, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Age of Empires IV', 'Return of the iconic RTS series.', 2021, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Factorio', 'Game about building automated factories.', 2020, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('RimWorld', 'Colony simulator with generated stories.', 2018, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Cities: Skylines', 'City building simulator.', 2015, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Euro Truck Simulator 2', 'Realistic truck driving simulator.', 2012, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Microsoft Flight Simulator', 'Photorealistic flight simulator.', 2020, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Kerbal Space Program', 'Rocket building and space exploration simulator.', 2015, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('The Sims 4', 'Life simulator with wide customization.', 2014, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Animal Crossing: New Horizons', 'Relaxing island life simulation.', 2020, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Rocket League', 'Soccer with cars.', 2015, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('FIFA 23', 'Soccer simulator from EA Sports.', 2022, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('NBA 2K23', 'Basketball simulator.', 2022, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Forza Horizon 5', 'Open-world racing in Mexico.', 2021, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Gran Turismo 7', 'Realistic racing simulator.', 2022, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('F1 2022', 'Official Formula 1 simulator.', 2022, null, false, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Mario Kart 8 Deluxe', 'Arcade racing with Nintendo characters.', 2017, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Super Mario Odyssey', '3D platformer with Mario and his cap Cappy.', 2017, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('The Legend of Zelda: Breath of the Wild', 'Open-world adventure in Zelda universe.', 2017, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('The Legend of Zelda: Tears of the Kingdom', 'Continuation of Breath of the Wild.', 2023, null, true, 'DEFAULT');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Super Smash Bros. Ultimate', 'Crossover fighting game with Nintendo characters and more.', 2018, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Street Fighter V', 'Classic 2D fighting game.', 2016, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Tekken 7', 'Popular 3D fighting game series.', 2017, null, true, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Mortal Kombat 11', 'Brutal fighting game with fatalities.', 2019, null, true, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Guilty Gear Strive', 'Anime fighting game with beautiful graphics.', 2021, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Dragon Ball FighterZ', '2D fighting game in Dragon Ball universe.', 2018, null, true, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Overwatch 2', 'Team-based hero shooter.', 2022, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Apex Legends', 'Battle royale with legends having unique abilities.', 2019, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Fortnite', 'Most popular battle royale with building.', 2017, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Call of Duty: Modern Warfare II', 'Latest installment in Call of Duty series.', 2022, null, true, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Battlefield 2042', 'Large-scale FPS with environmental destruction.', 2021, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Counter-Strike: Global Offensive', 'Iconic tactical FPS.', 2012, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Valorant', 'Tactical FPS with agents from Riot Games.', 2020, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Rainbow Six Siege', 'Tactical FPS with operators.', 2015, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Destiny 2', 'Sci-fi MMO FPS from Bungie.', 2017, null, true, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Warframe', 'Free-to-play cooperative sci-fi shooter.', 2013, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('League of Legends', 'Most popular MOBA in the world.', 2009, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('Dota 2', 'Competitive MOBA from Valve.', 2013, null, false, 'MULTIPLAYER');

INSERT INTO games (title, description, release_year, cover_url, has_story, default_rating_profile)
VALUES ('World of Warcraft', 'Iconic MMORPG in Warcraft universe.', 2004, null, true, 'MULTIPLAYER');

-- Gatunki dla gier (tabela: game_genres)
INSERT INTO game_genres (game_id, genre) VALUES (1, 'RPG');
INSERT INTO game_genres (game_id, genre) VALUES (2, 'RPG');
INSERT INTO game_genres (game_id, genre) VALUES (3, 'Action-Adventure');
INSERT INTO game_genres (game_id, genre) VALUES (4, 'Action-Adventure');
INSERT INTO game_genres (game_id, genre) VALUES (5, 'Action RPG');
INSERT INTO game_genres (game_id, genre) VALUES (6, 'Sandbox');
INSERT INTO game_genres (game_id, genre) VALUES (7, 'Action-Adventure');
INSERT INTO game_genres (game_id, genre) VALUES (8, 'Action-Adventure');
INSERT INTO game_genres (game_id, genre) VALUES (9, 'Roguelike');
INSERT INTO game_genres (game_id, genre) VALUES (10, 'Puzzle');
INSERT INTO game_genres (game_id, genre) VALUES (11, 'Action RPG');
INSERT INTO game_genres (game_id, genre) VALUES (12, 'Action-Adventure');
INSERT INTO game_genres (game_id, genre) VALUES (13, 'Platformer');
INSERT INTO game_genres (game_id, genre) VALUES (14, 'Metroidvania');
INSERT INTO game_genres (game_id, genre) VALUES (15, 'Simulation');
INSERT INTO game_genres (game_id, genre) VALUES (16, 'FPS');
INSERT INTO game_genres (game_id, genre) VALUES (17, 'RPG');
INSERT INTO game_genres (game_id, genre) VALUES (18, 'RPG');
INSERT INTO game_genres (game_id, genre) VALUES (19, 'FPS');
INSERT INTO game_genres (game_id, genre) VALUES (20, 'Action RPG');
INSERT INTO game_genres (game_id, genre) VALUES (21, 'JRPG');
INSERT INTO game_genres (game_id, genre) VALUES (22, 'JRPG');
INSERT INTO game_genres (game_id, genre) VALUES (23, 'Survival Horror');
INSERT INTO game_genres (game_id, genre) VALUES (24, 'Action');
INSERT INTO game_genres (game_id, genre) VALUES (25, 'Action-Adventure');
INSERT INTO game_genres (game_id, genre) VALUES (26, 'RPG');
INSERT INTO game_genres (game_id, genre) VALUES (27, 'RPG');
INSERT INTO game_genres (game_id, genre) VALUES (28, 'Action RPG');
INSERT INTO game_genres (game_id, genre) VALUES (29, 'Action-Adventure');
INSERT INTO game_genres (game_id, genre) VALUES (30, 'Action-Adventure');
INSERT INTO game_genres (game_id, genre) VALUES (31, 'Action-Adventure');
INSERT INTO game_genres (game_id, genre) VALUES (32, 'Stealth');
INSERT INTO game_genres (game_id, genre) VALUES (33, 'Action RPG');
INSERT INTO game_genres (game_id, genre) VALUES (34, 'FPS');
INSERT INTO game_genres (game_id, genre) VALUES (35, 'Stealth');
INSERT INTO game_genres (game_id, genre) VALUES (36, 'FPS');
INSERT INTO game_genres (game_id, genre) VALUES (37, 'FPS');
INSERT INTO game_genres (game_id, genre) VALUES (38, 'Survival Horror');
INSERT INTO game_genres (game_id, genre) VALUES (39, 'Action-Adventure');
INSERT INTO game_genres (game_id, genre) VALUES (40, 'Action RPG');
INSERT INTO game_genres (game_id, genre) VALUES (41, 'Action RPG');
INSERT INTO game_genres (game_id, genre) VALUES (42, 'Hack and Slash');
INSERT INTO game_genres (game_id, genre) VALUES (43, 'Hack and Slash');
INSERT INTO game_genres (game_id, genre) VALUES (44, 'Action RPG');
INSERT INTO game_genres (game_id, genre) VALUES (45, 'Adventure');
INSERT INTO game_genres (game_id, genre) VALUES (46, 'Survival');
INSERT INTO game_genres (game_id, genre) VALUES (47, 'Puzzle');
INSERT INTO game_genres (game_id, genre) VALUES (48, 'Adventure');
INSERT INTO game_genres (game_id, genre) VALUES (49, 'Adventure');
INSERT INTO game_genres (game_id, genre) VALUES (50, 'Adventure');
INSERT INTO game_genres (game_id, genre) VALUES (51, 'Metroidvania');
INSERT INTO game_genres (game_id, genre) VALUES (52, 'Metroidvania');
INSERT INTO game_genres (game_id, genre) VALUES (53, 'Run and Gun');
INSERT INTO game_genres (game_id, genre) VALUES (54, 'Roguelike');
INSERT INTO game_genres (game_id, genre) VALUES (55, 'Roguelike');
INSERT INTO game_genres (game_id, genre) VALUES (56, 'Roguelike');
INSERT INTO game_genres (game_id, genre) VALUES (57, 'Strategy');
INSERT INTO game_genres (game_id, genre) VALUES (58, 'Strategy');
INSERT INTO game_genres (game_id, genre) VALUES (59, 'Strategy');
INSERT INTO game_genres (game_id, genre) VALUES (60, 'RTS');
INSERT INTO game_genres (game_id, genre) VALUES (61, 'RTS');
INSERT INTO game_genres (game_id, genre) VALUES (62, 'RTS');
INSERT INTO game_genres (game_id, genre) VALUES (63, 'Simulation');
INSERT INTO game_genres (game_id, genre) VALUES (64, 'Simulation');
INSERT INTO game_genres (game_id, genre) VALUES (65, 'Simulation');
INSERT INTO game_genres (game_id, genre) VALUES (66, 'Simulation');
INSERT INTO game_genres (game_id, genre) VALUES (67, 'Simulation');
INSERT INTO game_genres (game_id, genre) VALUES (68, 'Simulation');
INSERT INTO game_genres (game_id, genre) VALUES (69, 'Simulation');
INSERT INTO game_genres (game_id, genre) VALUES (70, 'Simulation');
INSERT INTO game_genres (game_id, genre) VALUES (71, 'Sports');
INSERT INTO game_genres (game_id, genre) VALUES (72, 'Sports');
INSERT INTO game_genres (game_id, genre) VALUES (73, 'Sports');
INSERT INTO game_genres (game_id, genre) VALUES (74, 'Racing');
INSERT INTO game_genres (game_id, genre) VALUES (75, 'Racing');
INSERT INTO game_genres (game_id, genre) VALUES (76, 'Racing');
INSERT INTO game_genres (game_id, genre) VALUES (77, 'Racing');
INSERT INTO game_genres (game_id, genre) VALUES (78, 'Platformer');
INSERT INTO game_genres (game_id, genre) VALUES (79, 'Action-Adventure');
INSERT INTO game_genres (game_id, genre) VALUES (80, 'Action-Adventure');
INSERT INTO game_genres (game_id, genre) VALUES (81, 'Fighting');
INSERT INTO game_genres (game_id, genre) VALUES (82, 'Fighting');
INSERT INTO game_genres (game_id, genre) VALUES (83, 'Fighting');
INSERT INTO game_genres (game_id, genre) VALUES (84, 'Fighting');
INSERT INTO game_genres (game_id, genre) VALUES (85, 'Fighting');
INSERT INTO game_genres (game_id, genre) VALUES (86, 'Fighting');
INSERT INTO game_genres (game_id, genre) VALUES (87, 'FPS');
INSERT INTO game_genres (game_id, genre) VALUES (88, 'Battle Royale');
INSERT INTO game_genres (game_id, genre) VALUES (89, 'Battle Royale');
INSERT INTO game_genres (game_id, genre) VALUES (90, 'FPS');
INSERT INTO game_genres (game_id, genre) VALUES (91, 'FPS');
INSERT INTO game_genres (game_id, genre) VALUES (92, 'FPS');
INSERT INTO game_genres (game_id, genre) VALUES (93, 'FPS');
INSERT INTO game_genres (game_id, genre) VALUES (94, 'FPS');
INSERT INTO game_genres (game_id, genre) VALUES (95, 'FPS');
INSERT INTO game_genres (game_id, genre) VALUES (96, 'TPS');
INSERT INTO game_genres (game_id, genre) VALUES (97, 'MOBA');
INSERT INTO game_genres (game_id, genre) VALUES (98, 'MOBA');
INSERT INTO game_genres (game_id, genre) VALUES (99, 'MMORPG');

-- Platformy dla gier (tabela: game_platforms)
INSERT INTO game_platforms (game_id, platform) VALUES (1, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (1, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (1, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (1, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (2, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (2, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (2, 'Xbox Series X');
INSERT INTO game_platforms (game_id, platform) VALUES (3, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (3, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (3, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (4, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (4, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (4, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (5, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (5, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (5, 'Xbox Series X');
INSERT INTO game_platforms (game_id, platform) VALUES (6, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (6, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (6, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (6, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (6, 'Mobile');
INSERT INTO game_platforms (game_id, platform) VALUES (7, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (7, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (7, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (8, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (8, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (9, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (9, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (9, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (9, 'Xbox Series X');
INSERT INTO game_platforms (game_id, platform) VALUES (10, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (10, 'PlayStation 3');
INSERT INTO game_platforms (game_id, platform) VALUES (10, 'Xbox 360');
INSERT INTO game_platforms (game_id, platform) VALUES (11, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (11, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (11, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (12, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (12, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (12, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (13, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (13, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (13, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (14, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (14, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (14, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (15, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (15, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (15, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (15, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (16, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (16, 'PlayStation 3');
INSERT INTO game_platforms (game_id, platform) VALUES (16, 'Xbox 360');
INSERT INTO game_platforms (game_id, platform) VALUES (17, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (17, 'PlayStation 3');
INSERT INTO game_platforms (game_id, platform) VALUES (17, 'Xbox 360');
INSERT INTO game_platforms (game_id, platform) VALUES (18, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (18, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (18, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (18, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (19, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (19, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (19, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (19, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (20, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (21, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (21, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (21, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (21, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (22, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (22, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (22, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (23, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (23, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (23, 'Xbox Series X');
INSERT INTO game_platforms (game_id, platform) VALUES (24, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (24, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (24, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (25, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (25, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (25, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (26, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (26, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (26, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (26, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (27, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (27, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (27, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (28, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (28, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (28, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (29, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (29, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (30, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (30, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (31, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (31, 'PlayStation 3');
INSERT INTO game_platforms (game_id, platform) VALUES (31, 'Xbox 360');
INSERT INTO game_platforms (game_id, platform) VALUES (32, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (32, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (32, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (33, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (33, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (33, 'Xbox Series X');
INSERT INTO game_platforms (game_id, platform) VALUES (34, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (34, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (34, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (35, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (35, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (35, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (36, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (36, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (36, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (37, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (37, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (37, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (38, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (38, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (38, 'Xbox Series X');
INSERT INTO game_platforms (game_id, platform) VALUES (39, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (39, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (40, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (40, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (40, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (41, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (41, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (41, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (42, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (42, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (42, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (43, 'Wii U');
INSERT INTO game_platforms (game_id, platform) VALUES (43, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (44, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (44, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (44, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (45, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (45, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (45, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (46, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (46, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (46, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (46, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (47, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (47, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (47, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (47, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (48, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (48, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (48, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (49, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (49, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (49, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (49, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (50, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (50, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (50, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (51, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (51, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (51, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (52, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (52, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (52, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (53, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (53, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (53, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (53, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (54, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (54, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (54, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (54, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (55, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (55, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (55, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (55, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (56, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (56, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (56, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (56, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (57, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (57, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (58, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (58, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (58, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (59, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (59, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (59, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (59, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (60, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (61, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (62, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (63, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (64, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (65, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (65, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (65, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (65, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (66, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (67, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (67, 'Xbox Series X');
INSERT INTO game_platforms (game_id, platform) VALUES (68, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (68, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (68, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (69, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (69, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (69, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (70, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (71, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (71, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (71, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (71, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (72, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (72, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (72, 'Xbox Series X');
INSERT INTO game_platforms (game_id, platform) VALUES (72, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (73, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (73, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (73, 'Xbox Series X');
INSERT INTO game_platforms (game_id, platform) VALUES (74, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (74, 'Xbox Series X');
INSERT INTO game_platforms (game_id, platform) VALUES (75, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (76, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (76, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (76, 'Xbox Series X');
INSERT INTO game_platforms (game_id, platform) VALUES (77, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (78, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (79, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (80, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (81, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (82, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (82, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (83, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (83, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (83, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (84, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (84, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (84, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (84, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (85, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (85, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (85, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (86, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (86, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (86, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (86, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (87, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (87, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (87, 'Xbox Series X');
INSERT INTO game_platforms (game_id, platform) VALUES (88, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (88, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (88, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (88, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (89, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (89, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (89, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (89, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (89, 'Xbox Series X');
INSERT INTO game_platforms (game_id, platform) VALUES (89, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (89, 'Mobile');
INSERT INTO game_platforms (game_id, platform) VALUES (90, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (90, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (90, 'Xbox Series X');
INSERT INTO game_platforms (game_id, platform) VALUES (91, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (91, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (91, 'Xbox Series X');
INSERT INTO game_platforms (game_id, platform) VALUES (92, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (93, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (94, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (94, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (94, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (95, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (95, 'PlayStation 5');
INSERT INTO game_platforms (game_id, platform) VALUES (95, 'Xbox Series X');
INSERT INTO game_platforms (game_id, platform) VALUES (96, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (96, 'PlayStation 4');
INSERT INTO game_platforms (game_id, platform) VALUES (96, 'Xbox One');
INSERT INTO game_platforms (game_id, platform) VALUES (96, 'Nintendo Switch');
INSERT INTO game_platforms (game_id, platform) VALUES (97, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (98, 'PC');
INSERT INTO game_platforms (game_id, platform) VALUES (99, 'PC');

-- Recenzje (tabela: reviews)
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (1, 6, 'Świetna gra, polecam', 'Gameplay jest płynny i satysfakcjonujący.', 10, 10, 10, 9, 8, 9.5, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (1, 1, 'Dobra na kilka wieczorów', 'Muzyka doskonale buduje klimat.', 9, 9, 8, 10, 8, 8.9, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (1, 7, 'Technicznie niedopracowana', 'Muzyka doskonale buduje klimat.', 9, 10, 10, 10, 8, 9.4, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (1, 3, 'Warto zagrać', 'Grafika robi wrażenie, szczególnie oświetlenie.', 9, 8, 10, 8, 9, 8.75, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (1, 5, 'Dobra oprawa, słaba fabuła', 'Muzyka doskonale buduje klimat.', 10, 10, 10, 10, 10, 10.0, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (1, 4, 'Arcydzieło gatunku', 'Mechaniki walki są satysfakcjonujące.', 8, 9, 10, 9, 10, 9.0, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (1, 2, 'Wciągający gameplay', 'Gameplay jest płynny i satysfakcjonujący.', 8, 10, 10, 10, 10, 9.4, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (2, 4, 'Niesamowite doświadczenie', 'Regrywalność na wysokim poziomie.', 7, 8, 10, 9, 9, 8.35, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (2, 3, 'Dobra na kilka wieczorów', 'Kilkadziesiąt godzin świetnej zabawy.', 9, 7, 8, 9, 10, 8.6, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (2, 7, 'Klasyk który trzeba znać', 'Muzyka doskonale buduje klimat.', 9, 9, 9, 7, 7, 8.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (2, 6, 'Niezapomniana przygoda', 'Można by poprawić optymalizację.', 8, 7, 10, 8, 9, 8.25, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (2, 1, 'Dobra na kilka wieczorów', 'Regrywalność na wysokim poziomie.', 8, 9, 8, 7, 7, 7.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (2, 2, 'Niesamowite doświadczenie', 'Regrywalność na wysokim poziomie.', 7, 8, 9, 7, 8, 7.65, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (2, 5, 'Niezapomniana przygoda', 'Muzyka doskonale buduje klimat.', 8, 9, 9, 7, 7, 8.0, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (3, 5, 'Dobra na kilka wieczorów', 'Świat przedstawiony jest żywy i ciekawy.', 10, 10, 8, 10, 10, 9.7, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (3, 1, 'Technicznie niedopracowana', 'Trudna krzywa uczenia, ale warta wysiłku.', 9, 10, 8, 9, 9, 9.05, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (3, 4, 'Niezapomniana przygoda', 'Fabuła wciąga od pierwszych minut.', 10, 10, 10, 8, 10, 9.6, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (3, 7, 'Genialna narracja', 'Trudna krzywa uczenia, ale warta wysiłku.', 10, 10, 9, 9, 9, 9.5, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (3, 3, 'Dobra oprawa, słaba fabuła', 'Dialogi napisane z humorem i sercem.', 10, 8, 9, 10, 8, 9.15, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (3, 2, 'Technicznie niedopracowana', 'Można by poprawić optymalizację.', 10, 9, 9, 8, 10, 9.25, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (3, 6, 'Dobra na kilka wieczorów', 'Polecam każdemu fanowi gatunku.', 10, 10, 10, 10, 8, 9.7, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (4, 3, 'Arcydzieło gatunku', 'Kilkadziesiąt godzin świetnej zabawy.', 9, 10, 9, 9, 10, 9.35, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (4, 5, 'Technicznie niedopracowana', 'Nie spełnił moich oczekiwań.', 8, 8, 10, 8, 10, 8.6, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (4, 6, 'Solidna produkcja', 'Nie spełnił moich oczekiwań.', 8, 8, 8, 10, 9, 8.55, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (4, 4, 'Arcydzieło gatunku', 'Świat przedstawiony jest żywy i ciekawy.', 9, 10, 10, 10, 10, 9.7, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (4, 1, 'Rozczarowanie roku', 'Można by poprawić optymalizację.', 9, 9, 8, 9, 10, 9.0, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (4, 7, 'Technicznie niedopracowana', 'Grafika robi wrażenie, szczególnie oświetlenie.', 10, 8, 10, 8, 10, 9.2, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (4, 2, 'Niesamowite doświadczenie', 'Fabuła wciąga od pierwszych minut.', 10, 8, 9, 8, 10, 9.05, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (5, 4, 'Arcydzieło gatunku', 'Polecam każdemu fanowi gatunku.', 10, 9, 8, 10, 8, 9.2, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (5, 2, 'Świetna gra, polecam', 'Muzyka doskonale buduje klimat.', 9, 9, 10, 8, 10, 9.1, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (5, 1, 'Genialna narracja', 'Regrywalność na wysokim poziomie.', 9, 10, 9, 10, 9, 9.4, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (5, 7, 'Technicznie niedopracowana', 'Regrywalność na wysokim poziomie.', 10, 9, 8, 8, 8, 8.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (5, 3, 'Dobra na kilka wieczorów', 'Polecam każdemu fanowi gatunku.', 8, 9, 8, 10, 9, 8.75, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (5, 5, 'Wciągający gameplay', 'Kilkadziesiąt godzin świetnej zabawy.', 8, 9, 10, 8, 8, 8.5, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (5, 6, 'Warto zagrać', 'Muzyka doskonale buduje klimat.', 9, 10, 10, 8, 10, 9.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (9, 6, 'Genialna narracja', 'Trudna krzywa uczenia, ale warta wysiłku.', 8, 9, 10, 9, 8, 8.7, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (9, 5, 'Arcydzieło gatunku', 'Regrywalność na wysokim poziomie.', 8, 9, 10, 8, 10, 8.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (9, 7, 'Niesamowite doświadczenie', 'Można by poprawić optymalizację.', 8, 10, 10, 9, 10, 9.2, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (9, 3, 'Świetna gra, polecam', 'Nie spełnił moich oczekiwań.', 10, 10, 9, 10, 10, 9.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (9, 2, 'Warto zagrać', 'Trudna krzywa uczenia, ale warta wysiłku.', 10, 8, 10, 8, 10, 9.2, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (9, 1, 'Arcydzieło gatunku', 'Nie spełnił moich oczekiwań.', 8, 9, 8, 10, 9, 8.75, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (9, 4, 'Warto zagrać', 'Nie spełnił moich oczekiwań.', 10, 8, 9, 10, 10, 9.45, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (11, 4, 'Dobra oprawa, słaba fabuła', 'Mechaniki walki są satysfakcjonujące.', 8, 9, 9, 8, 9, 8.5, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (11, 3, 'Niesamowite doświadczenie', 'Gra zachwyca oprawą i fabułą.', 10, 9, 10, 8, 9, 9.25, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (11, 1, 'Arcydzieło gatunku', 'Nie spełnił moich oczekiwań.', 8, 10, 10, 10, 10, 9.4, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (11, 5, 'Moja ulubiona gra', 'Mechaniki walki są satysfakcjonujące.', 8, 8, 10, 9, 10, 8.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (11, 2, 'Dobra oprawa, słaba fabuła', 'Muzyka doskonale buduje klimat.', 8, 10, 10, 10, 10, 9.4, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (11, 7, 'Wciągający gameplay', 'Mechaniki walki są satysfakcjonujące.', 7, 10, 8, 10, 10, 8.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (11, 6, 'Wciągający gameplay', 'Można by poprawić optymalizację.', 10, 8, 10, 10, 8, 9.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (26, 2, 'Solidna produkcja', 'Grafika robi wrażenie, szczególnie oświetlenie.', 8, 9, 9, 10, 10, 9.05, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (26, 7, 'Warto zagrać', 'Trudna krzywa uczenia, ale warta wysiłku.', 10, 9, 10, 10, 10, 9.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (26, 4, 'Rozczarowanie roku', 'Grafika robi wrażenie, szczególnie oświetlenie.', 10, 9, 10, 9, 9, 9.45, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (26, 3, 'Moja ulubiona gra', 'Kilkadziesiąt godzin świetnej zabawy.', 10, 9, 10, 9, 10, 9.6, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (26, 6, 'Technicznie niedopracowana', 'Mechaniki walki są satysfakcjonujące.', 9, 10, 8, 10, 10, 9.4, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (26, 1, 'Moja ulubiona gra', 'Grafika robi wrażenie, szczególnie oświetlenie.', 10, 9, 9, 10, 10, 9.65, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (26, 5, 'Klasyk który trzeba znać', 'Muzyka doskonale buduje klimat.', 10, 9, 10, 10, 10, 9.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (21, 6, 'Świetna gra, polecam', 'Fabuła wciąga od pierwszych minut.', 10, 10, 10, 10, 9, 9.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (21, 3, 'Przeciętna gra', 'Nie spełnił moich oczekiwań.', 9, 9, 10, 9, 10, 9.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (21, 5, 'Warto zagrać', 'Fabuła wciąga od pierwszych minut.', 9, 9, 10, 9, 10, 9.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (21, 2, 'Niezapomniana przygoda', 'Fabuła wciąga od pierwszych minut.', 10, 10, 9, 10, 10, 9.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (21, 1, 'Wciągający gameplay', 'Świat przedstawiony jest żywy i ciekawy.', 9, 9, 8, 9, 9, 8.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (21, 4, 'Przeciętna gra', 'Muzyka doskonale buduje klimat.', 8, 9, 10, 10, 9, 9.05, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (21, 7, 'Warto zagrać', 'Świat przedstawiony jest żywy i ciekawy.', 9, 10, 8, 10, 10, 9.4, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (17, 4, 'Dobra na kilka wieczorów', 'Jeden z lepszych tytułów dekady.', 10, 8, 8, 9, 9, 8.95, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (17, 2, 'Rozczarowanie roku', 'Dialogi napisane z humorem i sercem.', 8, 10, 9, 10, 10, 9.25, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (17, 6, 'Genialna narracja', 'Kilkadziesiąt godzin świetnej zabawy.', 10, 9, 8, 9, 10, 9.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (17, 7, 'Przeciętna gra', 'Gameplay jest płynny i satysfakcjonujący.', 10, 8, 10, 8, 9, 9.05, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (17, 1, 'Niesamowite doświadczenie', 'Kilkadziesiąt godzin świetnej zabawy.', 10, 8, 9, 8, 10, 9.05, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (17, 3, 'Przeciętna gra', 'Muzyka doskonale buduje klimat.', 9, 8, 8, 8, 9, 8.45, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (14, 1, 'Genialna narracja', 'Muzyka doskonale buduje klimat.', 10, 10, 9, 9, 8, 9.35, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (14, 2, 'Moja ulubiona gra', 'Trudna krzywa uczenia, ale warta wysiłku.', 10, 10, 9, 9, 10, 9.65, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (14, 4, 'Niezapomniana przygoda', 'Świat przedstawiony jest żywy i ciekawy.', 8, 8, 9, 9, 8, 8.35, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (14, 5, 'Świetna gra, polecam', 'Trudna krzywa uczenia, ale warta wysiłku.', 9, 8, 9, 10, 8, 8.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (14, 3, 'Przeciętna gra', 'Polecam każdemu fanowi gatunku.', 9, 9, 8, 8, 10, 8.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (14, 7, 'Rozczarowanie roku', 'Fabuła wciąga od pierwszych minut.', 8, 9, 8, 10, 9, 8.75, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (15, 7, 'Niezapomniana przygoda', 'Gra zachwyca oprawą i fabułą.', 10, 8, 10, 8, 8, 8.9, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (15, 4, 'Niesamowite doświadczenie', 'Można by poprawić optymalizację.', 10, 10, 8, 8, 7, 8.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (15, 3, 'Niesamowite doświadczenie', 'Jeden z lepszych tytułów dekady.', 9, 9, 8, 10, 9, 9.05, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (15, 1, 'Warto zagrać', 'Jeden z lepszych tytułów dekady.', 9, 10, 8, 10, 10, 9.4, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (15, 2, 'Technicznie niedopracowana', 'Kilkadziesiąt godzin świetnej zabawy.', 7, 8, 9, 9, 10, 8.35, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (15, 6, 'Wciągający gameplay', 'Nie spełnił moich oczekiwań.', 8, 9, 9, 10, 8, 8.75, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (13, 5, 'Przeciętna gra', 'Gameplay jest płynny i satysfakcjonujący.', 10, 8, 10, 9, 8, 9.1, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (13, 1, 'Niesamowite doświadczenie', 'Mechaniki walki są satysfakcjonujące.', 9, 9, 10, 8, 9, 8.95, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (13, 7, 'Przeciętna gra', 'Muzyka doskonale buduje klimat.', 9, 10, 9, 10, 10, 9.55, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (13, 6, 'Solidna produkcja', 'Trudna krzywa uczenia, ale warta wysiłku.', 10, 9, 9, 10, 8, 9.35, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (13, 2, 'Przeciętna gra', 'Dialogi napisane z humorem i sercem.', 9, 10, 9, 9, 10, 9.35, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (13, 3, 'Moja ulubiona gra', 'Mechaniki walki są satysfakcjonujące.', 9, 9, 9, 8, 8, 8.65, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (10, 3, 'Genialna narracja', 'Kilkadziesiąt godzin świetnej zabawy.', 8, 10, 9, 10, 10, 9.25, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (10, 5, 'Arcydzieło gatunku', 'Muzyka doskonale buduje klimat.', 10, 10, 10, 9, 10, 9.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (6, 6, 'Klasyk który trzeba znać', 'Muzyka doskonale buduje klimat.', 9, 10, 10, NULL, 10, 9.65, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (27, 6, 'Technicznie niedopracowana', 'Kilkadziesiąt godzin świetnej zabawy.', 10, 9, 10, 9, 9, 9.45, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (7, 3, 'Solidna produkcja', 'Gameplay jest płynny i satysfakcjonujący.', 7, 7, 8, 8, 9, 7.65, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (7, 1, 'Niesamowite doświadczenie', 'Fabuła wciąga od pierwszych minut.', 8, 7, 7, 8, 7, 7.5, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (7, 5, 'Genialna narracja', 'Można by poprawić optymalizację.', 6, 6, 7, 8, 9, 7.0, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (7, 2, 'Świetna gra, polecam', 'Fabuła wciąga od pierwszych minut.', 6, 6, 7, 7, 7, 6.5, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (7, 6, 'Niezapomniana przygoda', 'Nie spełnił moich oczekiwań.', 9, 7, 8, 6, 7, 7.55, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (8, 1, 'Arcydzieło gatunku', 'Świat przedstawiony jest żywy i ciekawy.', 10, 7, 9, 9, 9, 8.9, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (8, 2, 'Solidna produkcja', 'Jeden z lepszych tytułów dekady.', 9, 8, 8, 10, 10, 9.0, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (8, 6, 'Arcydzieło gatunku', 'Fabuła wciąga od pierwszych minut.', 9, 9, 9, 8, 10, 8.95, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (8, 3, 'Przeciętna gra', 'Mechaniki walki są satysfakcjonujące.', 9, 7, 8, 7, 7, 7.75, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (8, 7, 'Przeciętna gra', 'Gameplay jest płynny i satysfakcjonujący.', 9, 8, 8, 9, 9, 8.65, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (19, 6, 'Wciągający gameplay', 'Polecam każdemu fanowi gatunku.', 7, 7, 8, NULL, 8, 7.4, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (19, 2, 'Moja ulubiona gra', 'Trudna krzywa uczenia, ale warta wysiłku.', 6, 6, 7, NULL, 8, 6.6, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (19, 3, 'Solidna produkcja', 'Regrywalność na wysokim poziomie.', 7, 6, 8, NULL, 8, 7.15, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (19, 7, 'Technicznie niedopracowana', 'Grafika robi wrażenie, szczególnie oświetlenie.', 7, 7, 7, NULL, 8, 7.2, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (20, 5, 'Niezapomniana przygoda', 'Dialogi napisane z humorem i sercem.', 10, 10, 9, 10, 10, 9.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (20, 3, 'Dobra oprawa, słaba fabuła', 'Fabuła wciąga od pierwszych minut.', 8, 7, 9, 9, 9, 8.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (20, 1, 'Klasyk który trzeba znać', 'Muzyka doskonale buduje klimat.', 8, 9, 9, 7, 9, 8.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (20, 7, 'Solidna produkcja', 'Nie spełnił moich oczekiwań.', 8, 9, 10, 9, 8, 8.7, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (20, 4, 'Klasyk który trzeba znać', 'Gameplay jest płynny i satysfakcjonujący.', 10, 10, 9, 8, 9, 9.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (25, 7, 'Genialna narracja', 'Można by poprawić optymalizację.', 8, 8, 8, 8, 7, 7.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (25, 4, 'Przeciętna gra', 'Trudna krzywa uczenia, ale warta wysiłku.', 8, 9, 7, 9, 8, 8.25, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (25, 5, 'Niesamowite doświadczenie', 'Fabuła wciąga od pierwszych minut.', 9, 7, 9, 7, 8, 8.05, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (25, 1, 'Przeciętna gra', 'Gameplay jest płynny i satysfakcjonujący.', 8, 8, 7, 9, 9, 8.2, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (28, 6, 'Dobra na kilka wieczorów', 'Polecam każdemu fanowi gatunku.', 8, 8, 9, 8, 10, 8.45, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (28, 2, 'Solidna produkcja', 'Świat przedstawiony jest żywy i ciekawy.', 8, 10, 8, 9, 9, 8.75, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (28, 4, 'Solidna produkcja', 'Mechaniki walki są satysfakcjonujące.', 9, 8, 10, 9, 8, 8.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (28, 3, 'Dobra na kilka wieczorów', 'Można by poprawić optymalizację.', 8, 9, 10, 7, 8, 8.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (29, 3, 'Arcydzieło gatunku', 'Dialogi napisane z humorem i sercem.', 9, 8, 8, 9, 9, 8.65, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (29, 7, 'Rozczarowanie roku', 'Nie spełnił moich oczekiwań.', 10, 7, 10, 10, 9, 9.25, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (29, 5, 'Moja ulubiona gra', 'Grafika robi wrażenie, szczególnie oświetlenie.', 10, 9, 8, 8, 10, 9.1, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (29, 4, 'Technicznie niedopracowana', 'Polecam każdemu fanowi gatunku.', 10, 10, 9, 9, 9, 9.5, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (16, 4, 'Wciągający gameplay', 'Grafika robi wrażenie, szczególnie oświetlenie.', 9, 10, 8, 9, 9, 9.05, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (16, 6, 'Genialna narracja', 'Można by poprawić optymalizację.', 10, 10, 8, 9, 8, 9.2, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (16, 2, 'Arcydzieło gatunku', 'Mechaniki walki są satysfakcjonujące.', 10, 7, 7, 10, 9, 8.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (16, 1, 'Niesamowite doświadczenie', 'Mechaniki walki są satysfakcjonujące.', 7, 10, 9, 7, 9, 8.2, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (12, 3, 'Rozczarowanie roku', 'Jeden z lepszych tytułów dekady.', 8, 7, 8, 8, 8, 7.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (12, 1, 'Niezapomniana przygoda', 'Kilkadziesiąt godzin świetnej zabawy.', 9, 7, 7, 8, 9, 8.1, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (12, 6, 'Niezapomniana przygoda', 'Gra zachwyca oprawą i fabułą.', 8, 9, 8, 8, 9, 8.35, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (18, 7, 'Niezapomniana przygoda', 'Muzyka doskonale buduje klimat.', 9, 7, 8, 8, 8, 8.1, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (18, 4, 'Warto zagrać', 'Kilkadziesiąt godzin świetnej zabawy.', 9, 8, 7, 9, 9, 8.5, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (18, 3, 'Wciągający gameplay', 'Nie spełnił moich oczekiwań.', 8, 8, 7, 7, 9, 7.8, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (23, 4, 'Przeciętna gra', 'Dialogi napisane z humorem i sercem.', 8, 8, 9, 8, 6, 7.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (23, 3, 'Niezapomniana przygoda', 'Kilkadziesiąt godzin świetnej zabawy.', 9, 7, 9, 7, 8, 8.05, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (23, 1, 'Niezapomniana przygoda', 'Gameplay jest płynny i satysfakcjonujący.', 8, 8, 8, 9, 8, 8.2, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (24, 6, 'Solidna produkcja', 'Grafika robi wrażenie, szczególnie oświetlenie.', 7, 7, 8, 6, 8, 7.1, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (24, 7, 'Dobra na kilka wieczorów', 'Regrywalność na wysokim poziomie.', 8, 7, 6, 9, 8, 7.7, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (24, 1, 'Genialna narracja', 'Fabuła wciąga od pierwszych minut.', 9, 8, 7, 7, 8, 7.95, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (30, 6, 'Rozczarowanie roku', 'Dialogi napisane z humorem i sercem.', 7, 5, 7, 7, 7, 6.6, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (30, 3, 'Przeciętna gra', 'Grafika robi wrażenie, szczególnie oświetlenie.', 7, 6, 7, 6, 5, 6.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (30, 1, 'Warto zagrać', 'Nie spełnił moich oczekiwań.', 7, 7, 6, 7, 7, 6.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (30, 4, 'Arcydzieło gatunku', 'Nie spełnił moich oczekiwań.', 5, 5, 7, 7, 6, 5.85, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (22, 1, 'Solidna produkcja', 'Można by poprawić optymalizację.', 8, 6, 7, 8, 6, 7.15, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (22, 6, 'Technicznie niedopracowana', 'Mechaniki walki są satysfakcjonujące.', 6, 6, 7, 7, 7, 6.5, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO reviews (game_id, user_id, title, content, gameplay_score, graphics_score, sound_score, story_score, replay_value_score, overall_score, rating_profile, created_at, updated_at) VALUES (22, 4, 'Warto zagrać', 'Dialogi napisane z humorem i sercem.', 8, 7, 8, 7, 6, 7.3, 'DEFAULT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
