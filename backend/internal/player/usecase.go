package player

type Usecase interface {
	GetPlayerCardByUID(uid string) (*PlayerCard, error)
	GetPlayerCardByName(name string) (*PlayerCard, error)
	GetAllPlayers() ([]PlayerShort, error)
	SearchPlayers(name string, leagueID, teamID int) ([]PlayerShort, error)
	CreatePlayer(p NewPlayer) (string, error)
	AddPlayerToTeam(pt PlayerTeam) (int, error)
	UpdatePhotoURL(uid, url string) error
}

type usecase struct {
	repo Repository
}

func NewUsecase(r Repository) Usecase {
	return &usecase{repo: r}
}

func (u *usecase) GetPlayerCardByUID(uid string) (*PlayerCard, error) {
	return u.repo.GetPlayerCardByUID(uid)
}

func (u *usecase) GetPlayerCardByName(name string) (*PlayerCard, error) {
	return u.repo.GetPlayerCardByName(name)
}

func (u *usecase) GetAllPlayers() ([]PlayerShort, error) {
	return u.repo.GetAllPlayers()
}

func (u *usecase) SearchPlayers(name string, leagueID, teamID int) ([]PlayerShort, error) {
	return u.repo.SearchPlayers(name, leagueID, teamID)
}

func (u *usecase) CreatePlayer(p NewPlayer) (string, error) {
	return u.repo.CreatePlayer(p)
}

func (u *usecase) AddPlayerToTeam(pt PlayerTeam) (int, error) {
	return u.repo.AddPlayerToTeam(pt)
}

func (u *usecase) UpdatePhotoURL(uid, url string) error {
	return u.repo.UpdatePhotoURL(uid, url)
}
