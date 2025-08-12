package team

import (
	"database/sql"

	"backend/internal/player"
)

type Repository interface {
	GetTeamByID(id int) (*TeamCard, error)
	GetPlayersByTeamID(teamID int) ([]player.PlayerShort, error)
}

type repository struct {
	db *sql.DB
}

func NewRepository(db *sql.DB) Repository {
	return &repository{db: db}
}

func (r *repository) GetTeamByID(id int) (*TeamCard, error) {
	query := `SELECT id, name, logo_url FROM teams WHERE id = $1;`
	var t TeamCard
	if err := r.db.QueryRow(query, id).Scan(&t.ID, &t.Name, &t.LogoURL); err != nil {
		return nil, err
	}
	return &t, nil
}

func (r *repository) GetPlayersByTeamID(teamID int) ([]player.PlayerShort, error) {
	query := `
        SELECT p.id, p.full_name, p.position, p.photo_url, t.name
        FROM players p
        JOIN player_team_history pth ON p.id = pth.player_id AND pth.end_date IS NULL
        JOIN teams t ON t.id = pth.team_id
        WHERE t.id = $1;
        `
	rows, err := r.db.Query(query, teamID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var result []player.PlayerShort
	for rows.Next() {
		var p player.PlayerShort
		if err := rows.Scan(&p.ID, &p.FullName, &p.Position, &p.Photo_URL, &p.Team); err != nil {
			return nil, err
		}
		result = append(result, p)
	}
	return result, nil
}
