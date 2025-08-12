package player

import (
	"database/sql"
	"fmt"
)

type Repository interface {
	GetPlayerCardByID(id int) (*PlayerCard, error)
	GetPlayerCardByName(name string) (*PlayerCard, error)
	GetAllPlayers() ([]PlayerShort, error)
	SearchPlayers(name string, leagueID, teamID int) ([]PlayerShort, error)
}

type repository struct {
	db *sql.DB
}

func NewRepository(db *sql.DB) Repository {
	return &repository{db: db}
}

// ===== Карточка игрока по ID =====
func (r *repository) GetPlayerCardByID(id int) (*PlayerCard, error) {
	query := `
    SELECT
        p.id,
        p.full_name,
        p.position,
        p.photo_url,
        t.name AS team_name,
        COALESCE(v.total_goals, 0),
        COALESCE(v.total_assists, 0),
        COALESCE(v.total_yellow, 0),
        COALESCE(v.total_red, 0)
    FROM players p
    JOIN player_team_history pth ON p.id = pth.player_id AND pth.end_date IS NULL
    JOIN teams t ON t.id = pth.team_id
    LEFT JOIN v_player_total_stats v ON v.player_id = p.id
    WHERE p.id = $1;
    `
	var card PlayerCard
	var stats Stats

	err := r.db.QueryRow(query, id).Scan(
		&card.ID, &card.FullName, &card.Position, &card.Photo_URL, &card.Team,
		&stats.Goals, &stats.Assists, &stats.YellowCards, &stats.RedCards,
	)
	if err != nil {
		return nil, err
	}

	card.Stats = stats
	return &card, nil
}

// ===== Карточка игрока по имени =====
func (r *repository) GetPlayerCardByName(name string) (*PlayerCard, error) {
	query := `
    SELECT
        p.id,
        p.full_name,
        p.position,
        p.photo_url,
        t.name AS team_name,
        COALESCE(v.total_goals, 0),
        COALESCE(v.total_assists, 0),
        COALESCE(v.total_yellow, 0),
        COALESCE(v.total_red, 0)
    FROM players p
    JOIN player_team_history pth ON p.id = pth.player_id AND pth.end_date IS NULL
    JOIN teams t ON t.id = pth.team_id
    LEFT JOIN v_player_total_stats v ON v.player_id = p.id
    WHERE p.full_name = $1;
    `
	var card PlayerCard
	var stats Stats

	err := r.db.QueryRow(query, name).Scan(
		&card.ID, &card.FullName, &card.Position, &card.Photo_URL, &card.Team,
		&stats.Goals, &stats.Assists, &stats.YellowCards, &stats.RedCards,
	)
	if err != nil {
		return nil, err
	}

	card.Stats = stats
	return &card, nil
}

// ===== Список всех игроков =====
func (r *repository) GetAllPlayers() ([]PlayerShort, error) {
	query := `
    SELECT
        p.id,
        p.full_name,
        p.position,
        p.photo_url,
        t.name AS team_name
    FROM players p
    JOIN player_team_history pth ON p.id = pth.player_id AND pth.end_date IS NULL
    JOIN teams t ON t.id = pth.team_id;
    `
	rows, err := r.db.Query(query)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var result []PlayerShort
	for rows.Next() {
		var p PlayerShort
		if err := rows.Scan(&p.ID, &p.FullName, &p.Position, &p.Photo_URL, &p.Team); err != nil {
			return nil, err
		}
		result = append(result, p)
	}

	return result, nil
}

// ===== Поиск и фильтрация игроков =====
func (r *repository) SearchPlayers(name string, leagueID, teamID int) ([]PlayerShort, error) {
	query := `
    SELECT
        p.id,
        p.full_name,
        p.position,
        p.photo_url,
        t.name AS team_name
    FROM players p
    JOIN player_team_history pth ON p.id = pth.player_id AND pth.end_date IS NULL
    JOIN teams t ON t.id = pth.team_id
    LEFT JOIN team_league_season tls ON tls.team_id = t.id
    WHERE 1=1`

	args := []interface{}{}
	idx := 1
	if name != "" {
		query += fmt.Sprintf(" AND p.full_name ILIKE '%%' || $%d || '%%'", idx)
		args = append(args, name)
		idx++
	}
	if leagueID != 0 {
		query += fmt.Sprintf(" AND tls.league_id = $%d", idx)
		args = append(args, leagueID)
		idx++
	}
	if teamID != 0 {
		query += fmt.Sprintf(" AND t.id = $%d", idx)
		args = append(args, teamID)
		idx++
	}

	rows, err := r.db.Query(query, args...)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var result []PlayerShort
	for rows.Next() {
		var p PlayerShort
		if err := rows.Scan(&p.ID, &p.FullName, &p.Position, &p.Photo_URL, &p.Team); err != nil {
			return nil, err
		}
		result = append(result, p)
	}

	return result, nil
}
