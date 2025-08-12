package team

import "backend/internal/player"

type TeamCard struct {
	ID      int                  `json:"id"`
	Name    string               `json:"name"`
	LogoURL string               `json:"logo_url"`
	Players []player.PlayerShort `json:"players"`
}

type NewTeam struct {
	Name    string `json:"name"`
	LogoURL string `json:"logo_url"`
}

type TeamLeagueSeason struct {
	TeamID   int `json:"team_id"`
	LeagueID int `json:"league_id"`
	SeasonID int `json:"season_id"`
}
