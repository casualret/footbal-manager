package team

import (
	"database/sql"

	"backend/internal/player"
)

type Repository interface {
	GetTeams() ([]TeamCard, error)
	GetTeamByID(id int) (*TeamCard, error)
	GetPlayersByTeamID(teamID int) ([]player.PlayerShort, error)
	CreateTeam(t NewTeam) (int, error)
	AssignTeamToLeagueSeason(tls TeamLeagueSeason) (int, error)
	UpdateLogoURL(id int, url string) error
}

type repository struct {
	db *sql.DB
}

func NewRepository(db *sql.DB) Repository {
	return &repository{db: db}
}

func (r *repository) CreateTeam(t NewTeam) (int, error) {
	var id int
	err := r.db.QueryRow(
		"INSERT INTO teams (name, logo_url) VALUES ($1, $2) RETURNING id",
		t.Name, t.LogoURL,
	).Scan(&id)
	if err != nil {
		return 0, err
	}
	return id, nil
}

func (r *repository) GetTeams() ([]TeamCard, error) {
	query := `SELECT id, name, COALESCE(logo_url, '') AS logo_url FROM teams;`
	rows, err := r.db.Query(query)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var teams []TeamCard
	for rows.Next() {
		var t TeamCard
		if err := rows.Scan(&t.ID, &t.Name, &t.LogoURL); err != nil {
			return nil, err
		}
		teams = append(teams, t)
	}
	return teams, nil
}

func (r *repository) GetTeamByID(id int) (*TeamCard, error) {
	query := `SELECT id, name, COALESCE(logo_url, '') AS logo_url FROM teams  WHERE id = $1;`
	var t TeamCard
	if err := r.db.QueryRow(query, id).Scan(&t.ID, &t.Name, &t.LogoURL); err != nil {
		return nil, err
	}
	return &t, nil
}

func (r *repository) GetPlayersByTeamID(teamID int) ([]player.PlayerShort, error) {
	query := `
        SELECT p.id, p.uid, p.full_name, p.position, COALESCE(p.photo_url, '') AS photo_url, t.name
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

	result := []player.PlayerShort{}
	for rows.Next() {
		var p player.PlayerShort
		if err := rows.Scan(&p.ID, &p.UID, &p.FullName, &p.Position, &p.Photo_URL, &p.Team); err != nil {
			return nil, err
		}
		result = append(result, p)
	}
	return result, nil
}

func (r *repository) AssignTeamToLeagueSeason(tls TeamLeagueSeason) (int, error) {
	var id int
	err := r.db.QueryRow(
		"INSERT INTO team_league_season (team_id, league_id, season_id) VALUES ($1, $2, $3) RETURNING id",
		tls.TeamID, tls.LeagueID, tls.SeasonID,
	).Scan(&id)
	if err != nil {
		return 0, err
	}
	return id, nil
}

func (r *repository) UpdateLogoURL(id int, url string) error {
	_, err := r.db.Exec("UPDATE teams SET logo_url = $1 WHERE id = $2", url, id)
	return err
}
