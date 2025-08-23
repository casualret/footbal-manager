
-- ===============================================
-- Оптимизированная схема футбольной лиги (с нуля)
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

-- ===============================================
-- Схема информации об игроках
-- ===============================================

-- Игроки
CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    uid TEXT NOT NULL UNIQUE,
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

-- ===============================================
-- Схема информации о матчах
-- ===============================================

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

-- Статистика игрока в конкретном матче (Г, Пас, ЖК, КК)
CREATE TABLE player_stats (
    id SERIAL PRIMARY KEY,
    match_participation_id INT NOT NULL REFERENCES match_participation(id),
    goals INT DEFAULT 0,
    passes INT DEFAULT 0,
    yellow_cards INT DEFAULT 0,
    red_cards INT DEFAULT 0,
    CONSTRAINT uq_stats_participation UNIQUE(match_participation_id)
);

-- ===============================================
-- Представления (Views)
-- ===============================================

-- Суммарная статистика игрока за всё время
CREATE OR REPLACE VIEW v_player_total_stats AS
SELECT
    mp.player_id,
    COALESCE(SUM(ps.goals), 0) AS total_goals,
    COALESCE(SUM(ps.passes), 0) AS total_passes,
    COALESCE(SUM(ps.yellow_cards), 0) AS total_yellow,
    COALESCE(SUM(ps.red_cards), 0) AS total_red,
    SUM(
        CASE
            WHEN (mp.team_id = m.home_team_id AND m.home_score > m.away_score)
              OR (mp.team_id = m.away_team_id AND m.away_score > m.home_score)
            THEN 1 ELSE 0
        END
    ) AS total_wins,
    SUM(
        CASE
            WHEN (mp.team_id = m.home_team_id AND m.home_score < m.away_score)
              OR (mp.team_id = m.away_team_id AND m.away_score < m.home_score)
            THEN 1 ELSE 0
        END
    ) AS total_losses
FROM match_participation mp
LEFT JOIN player_stats ps ON mp.id = ps.match_participation_id
JOIN matches m ON m.id = mp.match_id
GROUP BY mp.player_id;

-- ===============================================
-- Индексы
-- ===============================================
CREATE INDEX idx_match_round ON matches(round_id);
CREATE INDEX idx_participation_match ON match_participation(match_id);
CREATE INDEX idx_participation_player ON match_participation(player_id);
CREATE INDEX idx_stats_participation ON player_stats(match_participation_id);
