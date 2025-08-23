package player

import (
	"database/sql"
	"fmt"
	"time"

	"github.com/google/uuid"
)

type Repository interface {
	GetPlayerCardByUID(uid string) (*PlayerCard, error)
	GetPlayerCardByName(name string) (*PlayerCard, error)
	GetAllPlayers() ([]PlayerShort, error)
	SearchPlayers(name string, leagueID, teamID int) ([]PlayerShort, error)
	CreatePlayer(p NewPlayer) (string, error)
	AddPlayerToTeam(pt PlayerTeam) (int, error)
	UpdatePhotoURL(uid, url string) error
}

type repository struct {
	db *sql.DB
}

func NewRepository(db *sql.DB) Repository {
	return &repository{db: db}
}

// ===== Карточка игрока по UID =====
func (r *repository) GetPlayerCardByUID(uid string) (*PlayerCard, error) {
	query := `
    SELECT
        p.id,
        p.uid,
        p.full_name,
        p.position,
        COALESCE(p.photo_url, '') AS photo_url,
        t.name AS team_name,
        COALESCE(v.total_goals, 0),
        COALESCE(v.total_passes, 0),
        COALESCE(v.total_yellow, 0),
        COALESCE(v.total_red, 0),
        COALESCE(v.total_wins, 0),
        COALESCE(v.total_losses, 0)
    FROM players p
    JOIN player_team_history pth ON p.id = pth.player_id AND pth.end_date IS NULL
    JOIN teams t ON t.id = pth.team_id
    LEFT JOIN v_player_total_stats v ON v.player_id = p.id
    WHERE p.uid = $1;
    `
	var card PlayerCard
	var stats Stats

	err := r.db.QueryRow(query, uid).Scan(
		&card.ID, &card.UID, &card.FullName, &card.Position, &card.Photo_URL, &card.Team,
		&stats.Goals, &stats.Passes, &stats.YellowCards, &stats.RedCards, &stats.Wins, &stats.Losses,
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
        p.uid,
        p.full_name,
        p.position,
        COALESCE(p.photo_url, '') AS photo_url,
        t.name AS team_name,
        COALESCE(v.total_goals, 0),
        COALESCE(v.total_passes, 0),
        COALESCE(v.total_yellow, 0),
        COALESCE(v.total_red, 0),
        COALESCE(v.total_wins, 0),
        COALESCE(v.total_losses, 0)
    FROM players p
    JOIN player_team_history pth ON p.id = pth.player_id AND pth.end_date IS NULL
    JOIN teams t ON t.id = pth.team_id
    LEFT JOIN v_player_total_stats v ON v.player_id = p.id
    WHERE p.full_name = $1;
    `
	var card PlayerCard
	var stats Stats

	err := r.db.QueryRow(query, name).Scan(
		&card.ID, &card.UID, &card.FullName, &card.Position, &card.Photo_URL, &card.Team,
		&stats.Goals, &stats.Passes, &stats.YellowCards, &stats.RedCards, &stats.Wins, &stats.Losses,
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
        p.uid,
        p.full_name,
        p.position,
        COALESCE(p.photo_url, '') AS photo_url,
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
		if err := rows.Scan(&p.ID, &p.UID, &p.FullName, &p.Position, &p.Photo_URL, &p.Team); err != nil {
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
        p.uid,
        p.full_name,
        p.position,
        COALESCE(p.photo_url, '') AS photo_url,
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
		if err := rows.Scan(&p.ID, &p.UID, &p.FullName, &p.Position, &p.Photo_URL, &p.Team); err != nil {
			return nil, err
		}
		result = append(result, p)
	}

	return result, nil
}

func (r *repository) CreatePlayer(p NewPlayer) (string, error) {
	uid := uuid.NewString()
	tx, err := r.db.Begin()
	if err != nil {
		return "", err
	}

	var playerID int
	err = tx.QueryRow(
		"INSERT INTO players (uid, full_name, position, photo_url) VALUES ($1, $2, $3, $4) RETURNING id",
		uid, p.FullName, p.Position, p.PhotoURL,
	).Scan(&playerID)
	if err != nil {
		tx.Rollback()
		return "", err
	}

	_, err = tx.Exec(
		"INSERT INTO player_team_history (player_id, team_id, start_date) VALUES ($1, $2, $3)",
		playerID, p.TeamID, time.Now(),
	)
	if err != nil {
		tx.Rollback()
		return "", err
	}

	if err := tx.Commit(); err != nil {
		return "", err
	}
	return uid, nil
}

func (r *repository) AddPlayerToTeam(pt PlayerTeam) (int, error) {
	tx, err := r.db.Begin()
	if err != nil {
		return 0, err
	}

	_, err = tx.Exec(
		"UPDATE player_team_history SET end_date = $1 WHERE player_id = $2 AND end_date IS NULL",
		time.Now(), pt.PlayerID,
	)
	if err != nil {
		tx.Rollback()
		return 0, err
	}

	var id int
	err = tx.QueryRow(
		"INSERT INTO player_team_history (player_id, team_id, start_date) VALUES ($1, $2, $3) RETURNING id",
		pt.PlayerID, pt.TeamID, time.Now(),
	).Scan(&id)
	if err != nil {
		tx.Rollback()
		return 0, err
	}

	if err := tx.Commit(); err != nil {
		return 0, err
	}
	return id, nil
}

func (r *repository) UpdatePhotoURL(uid, url string) error {
	_, err := r.db.Exec("UPDATE players SET photo_url = $1 WHERE uid = $2", url, uid)
	return err
}
