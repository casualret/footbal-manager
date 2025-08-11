
-- ===============================================
-- Полная схема базы данных футбольной лиги с нуля
-- ===============================================

-- Очистка (только для dev окружений!)
DROP SCHEMA public CASCADE;
CREATE SCHEMA public;

-- Служебные расширения
CREATE EXTENSION IF NOT EXISTS plpgsql;

-- ===============================================
-- Таблицы
-- ===============================================

-- Лиги
CREATE TABLE leagues (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    level INT NOT NULL UNIQUE -- 1 = ПЛ, 2 = 1 лига, и т.д.
);

-- Сезоны
CREATE TABLE seasons (
    id SERIAL PRIMARY KEY,
    year INT NOT NULL,
    name TEXT NOT NULL
);

-- Команды
CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    logo_url TEXT
);

-- Принадлежность команды лиге в сезоне
CREATE TABLE team_league_season (
    id SERIAL PRIMARY KEY,
    team_id INT NOT NULL REFERENCES teams(id),
    league_id INT NOT NULL REFERENCES leagues(id),
    season_id INT NOT NULL REFERENCES seasons(id),
    UNIQUE(team_id, season_id)
);

-- Игроки
CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    full_name TEXT NOT NULL,
    position TEXT NOT NULL,
    photo_url TEXT
);

-- История принадлежности игрока к командам
CREATE TABLE player_team_history (
    id SERIAL PRIMARY KEY,
    player_id INT NOT NULL REFERENCES players(id),
    team_id INT NOT NULL REFERENCES teams(id),
    start_date DATE NOT NULL,
    end_date DATE
);

-- Туры
CREATE TABLE rounds (
    id SERIAL PRIMARY KEY,
    season_id INT NOT NULL REFERENCES seasons(id),
    league_id INT NOT NULL REFERENCES leagues(id),
    round_number INT NOT NULL,
    UNIQUE(season_id, league_id, round_number)
);

-- Матчи
CREATE TABLE matches (
    id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    home_team_id INT NOT NULL REFERENCES teams(id),
    away_team_id INT NOT NULL REFERENCES teams(id),
    season_id INT NOT NULL REFERENCES seasons(id),
    home_score INT DEFAULT 0,
    away_score INT DEFAULT 0,
    round_id INT REFERENCES rounds(id)
);

-- Участие игрока в матче
CREATE TABLE match_participation (
    id SERIAL PRIMARY KEY,
    match_id INT NOT NULL REFERENCES matches(id),
    player_id INT NOT NULL REFERENCES players(id),
    team_id INT NOT NULL REFERENCES teams(id),
    is_starting BOOLEAN DEFAULT true,
    CONSTRAINT uq_match_player UNIQUE(match_id, player_id)
);

-- Статистика игрока в конкретном матче
CREATE TABLE player_stats (
    id SERIAL PRIMARY KEY,
    match_participation_id INT NOT NULL REFERENCES match_participation(id),
    goals INT DEFAULT 0,
    assists INT DEFAULT 0,
    penalties INT DEFAULT 0,
    yellow_cards INT DEFAULT 0,
    red_cards INT DEFAULT 0,
    CONSTRAINT uq_stats_participation UNIQUE(match_participation_id)
);

-- ===============================================
-- Представления (Views)
-- ===============================================

-- Суммарная статистика игрока по сезону и лиге
CREATE OR REPLACE VIEW v_player_season_stats AS
SELECT
    mp.player_id,
    r.season_id,
    r.league_id,
    SUM(ps.goals) AS total_goals,
    SUM(ps.assists) AS total_assists,
    SUM(ps.yellow_cards) AS total_yellow,
    SUM(ps.red_cards) AS total_red
FROM player_stats ps
JOIN match_participation mp ON mp.id = ps.match_participation_id
JOIN matches m ON m.id = mp.match_id
JOIN rounds r ON r.id = m.round_id
GROUP BY mp.player_id, r.season_id, r.league_id;

-- ===============================================
-- Индексы
-- ===============================================
CREATE INDEX idx_match_round ON matches(round_id);
CREATE INDEX idx_participation_match ON match_participation(match_id);
CREATE INDEX idx_participation_player ON match_participation(player_id);
CREATE INDEX idx_stats_participation ON player_stats(match_participation_id);
