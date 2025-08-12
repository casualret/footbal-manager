package match

import "database/sql"

// Repository defines methods to interact with matches related tables
type Repository interface {
	CreateRound(nr NewRound) (int, error)
	CreateMatch(nm NewMatch) (int, error)
	CreateMatchParticipation(mp MatchParticipation) (int, error)
	CreatePlayerStats(ps PlayerStats) (int, error)
	UpdateMatchScore(id int, ms MatchScore) error
	ListMatches() ([]Match, error)
	GetMatchDetails(id int) (*MatchDetails, error)
}

type repository struct {
	db *sql.DB
}

func NewRepository(db *sql.DB) Repository {
	return &repository{db: db}
}

func (r *repository) CreateRound(nr NewRound) (int, error) {
	var id int
	err := r.db.QueryRow(
		"INSERT INTO rounds (season_id, league_id, round_number) VALUES ($1, $2, $3) RETURNING id",
		nr.SeasonID, nr.LeagueID, nr.RoundNumber,
	).Scan(&id)
	if err != nil {
		return 0, err
	}
	return id, nil
}

func (r *repository) CreateMatch(nm NewMatch) (int, error) {
	var id int
	err := r.db.QueryRow(
		"INSERT INTO matches (date, home_team_id, away_team_id, season_id, round_id, home_score, away_score) VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING id",
		nm.Date, nm.HomeTeamID, nm.AwayTeamID, nm.SeasonID, nm.RoundID, nm.HomeScore, nm.AwayScore,
	).Scan(&id)
	if err != nil {
		return 0, err
	}
	return id, nil
}

func (r *repository) CreateMatchParticipation(mp MatchParticipation) (int, error) {
	var id int
	err := r.db.QueryRow(
		"INSERT INTO match_participation (match_id, player_id, team_id, is_starting) VALUES ($1, $2, $3, $4) RETURNING id",
		mp.MatchID, mp.PlayerID, mp.TeamID, mp.IsStarting,
	).Scan(&id)
	if err != nil {
		return 0, err
	}
	return id, nil
}

func (r *repository) CreatePlayerStats(ps PlayerStats) (int, error) {
	var id int
	err := r.db.QueryRow(
		"INSERT INTO player_stats (match_participation_id, goals, assists, yellow_cards, red_cards) VALUES ($1, $2, $3, $4, $5) RETURNING id",
		ps.MatchParticipationID, ps.Goals, ps.Assists, ps.YellowCards, ps.RedCards,
	).Scan(&id)
	if err != nil {
		return 0, err
	}
	return id, nil
}

func (r *repository) UpdateMatchScore(id int, ms MatchScore) error {
	_, err := r.db.Exec(
		"UPDATE matches SET home_score = $1, away_score = $2 WHERE id = $3",
		ms.HomeScore, ms.AwayScore, id,
	)
	return err
}

func (r *repository) ListMatches() ([]Match, error) {
	rows, err := r.db.Query(
		"SELECT id, date, home_team_id, away_team_id, season_id, round_id, home_score, away_score FROM matches",
	)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var matches []Match
	for rows.Next() {
		var m Match
		if err := rows.Scan(&m.ID, &m.Date, &m.HomeTeamID, &m.AwayTeamID, &m.SeasonID, &m.RoundID, &m.HomeScore, &m.AwayScore); err != nil {
			return nil, err
		}
		matches = append(matches, m)
	}

	return matches, rows.Err()
}

func (r *repository) GetMatchDetails(id int) (*MatchDetails, error) {
	var m Match
	err := r.db.QueryRow(
		"SELECT id, date, home_team_id, away_team_id, season_id, round_id, home_score, away_score FROM matches WHERE id = $1",
		id,
	).Scan(&m.ID, &m.Date, &m.HomeTeamID, &m.AwayTeamID, &m.SeasonID, &m.RoundID, &m.HomeScore, &m.AwayScore)
	if err != nil {
		return nil, err
	}

	rows, err := r.db.Query(
		"SELECT mp.player_id, mp.team_id, mp.is_starting, COALESCE(ps.goals, 0), COALESCE(ps.assists, 0), COALESCE(ps.yellow_cards, 0), COALESCE(ps.red_cards, 0) FROM match_participation mp LEFT JOIN player_stats ps ON ps.match_participation_id = mp.id WHERE mp.match_id = $1",
		id,
	)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var participants []ParticipantStats
	for rows.Next() {
		var p ParticipantStats
		if err := rows.Scan(&p.PlayerID, &p.TeamID, &p.IsStarting, &p.Goals, &p.Assists, &p.YellowCards, &p.RedCards); err != nil {
			return nil, err
		}
		participants = append(participants, p)
	}

	return &MatchDetails{Match: m, Participants: participants}, rows.Err()
}
