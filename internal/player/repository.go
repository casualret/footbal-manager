package player

import (
	"database/sql"
)

type Repository interface {
	GetPlayerCardByName(name string) (*PlayerCard, error)
	GetAllPlayers() ([]PlayerShort, error)
}

type repository struct {
	db *sql.DB
}

func NewRepository(db *sql.DB) Repository {
	return &repository{db: db}
}

func (r *repository) GetPlayerCardByName(name string) (*PlayerCard, error) {
	query := `
        SELECT 
            p.full_name, 
            p.position, 
            p.photo_url,
            t.name AS team_name,
            COALESCE(SUM(ps.goals), 0),
            COALESCE(SUM(ps.assists), 0),
            COALESCE(SUM(ps.penalties), 0),
            COALESCE(SUM(ps.yellow_cards), 0),
            COALESCE(SUM(ps.red_cards), 0),
            COUNT(DISTINCT mp.match_id),
            COUNT(DISTINCT CASE WHEN m.home_team_id = pth.team_id AND m.home_score > m.away_score THEN m.id
                                WHEN m.away_team_id = pth.team_id AND m.away_score > m.home_score THEN m.id
                                ELSE NULL END),
            COUNT(DISTINCT CASE WHEN m.home_team_id = pth.team_id AND m.home_score < m.away_score THEN m.id
                                WHEN m.away_team_id = pth.team_id AND m.away_score < m.home_score THEN m.id
                                ELSE NULL END)
        FROM players p
        JOIN player_team_history pth ON p.id = pth.player_id AND pth.end_date IS NULL
        JOIN teams t ON t.id = pth.team_id
        LEFT JOIN match_participation mp ON mp.player_id = p.id
        LEFT JOIN matches m ON m.id = mp.match_id
        LEFT JOIN player_stats ps ON ps.match_participation_id = mp.id
        WHERE p.full_name = $1
        GROUP BY p.full_name, p.position, p.photo_url, t.name
    `

	var card PlayerCard
	var stats Stats

	err := r.db.QueryRow(query, name).Scan(
		&card.FullName, &card.Position, &card.Photo_URL, &card.Team,
		&stats.Goals, &stats.Assists, &stats.Penalties,
		&stats.YellowCards, &stats.RedCards,
		&stats.Games, &stats.Wins, &stats.Losses,
	)
	if err != nil {
		return nil, err
	}

	card.Stats = stats
	return &card, nil
}

func (r *repository) GetAllPlayers() ([]PlayerShort, error) {
	query := `
        SELECT 
            p.full_name, 
            p.position,
            p.photo_url,
            t.name AS team_name
        FROM players p
        JOIN player_team_history pth ON p.id = pth.player_id AND pth.end_date IS NULL
        JOIN teams t ON t.id = pth.team_id
    `
	rows, err := r.db.Query(query)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var result []PlayerShort
	for rows.Next() {
		var p PlayerShort
		if err := rows.Scan(&p.FullName, &p.Position, &p.Photo_URL, &p.Team); err != nil {
			return nil, err
		}
		result = append(result, p)
	}

	return result, nil
}
