package match

// NewRound represents the payload to create a round
type NewRound struct {
	SeasonID    int `json:"season_id"`
	LeagueID    int `json:"league_id"`
	RoundNumber int `json:"round_number"`
}

// NewMatch represents the payload to create a match
type NewMatch struct {
	Date       string `json:"date"`
	HomeTeamID int    `json:"home_team_id"`
	AwayTeamID int    `json:"away_team_id"`
	SeasonID   int    `json:"season_id"`
	RoundID    int    `json:"round_id"`
	HomeScore  int    `json:"home_score"`
	AwayScore  int    `json:"away_score"`
}

// MatchParticipation represents player participation in a match
type MatchParticipation struct {
	MatchID    int  `json:"match_id"`
	PlayerID   int  `json:"player_id"`
	TeamID     int  `json:"team_id"`
	IsStarting bool `json:"is_starting"`
}

// PlayerStats represents statistics for a player in a match
type PlayerStats struct {
	MatchParticipationID int `json:"match_participation_id"`
	Goals                int `json:"goals"`
	Assists              int `json:"assists"`
	YellowCards          int `json:"yellow_cards"`
	RedCards             int `json:"red_cards"`
}

// MatchScore is used to update the final score of a match
type MatchScore struct {
	HomeScore int `json:"home_score"`
	AwayScore int `json:"away_score"`
}

// Match represents a stored match with scores
type Match struct {
	ID         int    `json:"id"`
	Date       string `json:"date"`
	HomeTeamID int    `json:"home_team_id"`
	AwayTeamID int    `json:"away_team_id"`
	SeasonID   int    `json:"season_id"`
	RoundID    int    `json:"round_id"`
	HomeScore  int    `json:"home_score"`
	AwayScore  int    `json:"away_score"`
}

// ParticipantStats combines participation and player stats
type ParticipantStats struct {
	PlayerID    int  `json:"player_id"`
	TeamID      int  `json:"team_id"`
	IsStarting  bool `json:"is_starting"`
	Goals       int  `json:"goals"`
	Assists     int  `json:"assists"`
	YellowCards int  `json:"yellow_cards"`
	RedCards    int  `json:"red_cards"`
}

// MatchDetails contains match info and participant statistics
type MatchDetails struct {
	Match
	Participants []ParticipantStats `json:"participants"`
}
