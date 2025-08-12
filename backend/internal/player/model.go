package player

type Stats struct {
	Goals       int `json:"goals"`
	Assists     int `json:"assists"`
	YellowCards int `json:"yellow_cards"`
	RedCards    int `json:"red_cards"`
}

type PlayerCard struct {
	ID        int    `json:"id"`
	FullName  string `json:"full_name"`
	Position  string `json:"position"`
	Photo_URL string `json:"photo_url"`
	Team      string `json:"team"`
	Stats     Stats  `json:"stats"`
}

type PlayerShort struct {
	ID        int    `json:"id"`
	FullName  string `json:"full_name"`
	Position  string `json:"position"`
	Photo_URL string `json:"photo_url"`
	Team      string `json:"team"`
}

type NewPlayer struct {
	FullName string `json:"full_name"`
	Position string `json:"position"`
	PhotoURL string `json:"photo_url"`
	TeamID   int    `json:"team_id"`
}

type PlayerTeam struct {
	PlayerID int `json:"player_id"`
	TeamID   int `json:"team_id"`
}
