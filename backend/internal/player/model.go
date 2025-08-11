package player

type Stats struct {
	Games       int `json:"games"`
	Wins        int `json:"wins"`
	Losses      int `json:"losses"`
	Goals       int `json:"goals"`
	Assists     int `json:"assists"`
	Penalties   int `json:"penalties"`
	YellowCards int `json:"yellow_cards"`
	RedCards    int `json:"red_cards"`
}

type PlayerCard struct {
	FullName  string `json:"full_name"`
	Position  string `json:"position"`
	Photo_URL string `json:"photo_url"`
	Team      string `json:"team"`
	Stats     Stats  `json:"stats"`
}

type PlayerShort struct {
	FullName  string `json:"full_name"`
	Position  string `json:"position"`
	Photo_URL string `json:"photo_url"`
	Team      string `json:"team"`
}
