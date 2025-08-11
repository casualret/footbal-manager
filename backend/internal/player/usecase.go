package player

type Usecase interface {
	GetPlayerCardByID(id, seasonID, leagueID int) (*PlayerCard, error)
	GetPlayerCardByName(name string, seasonID, leagueID int) (*PlayerCard, error)
	GetAllPlayers() ([]PlayerShort, error)
	SearchPlayers(name string) ([]PlayerShort, error)
}

type usecase struct {
	repo Repository
}

func NewUsecase(r Repository) Usecase {
	return &usecase{repo: r}
}

func (u *usecase) GetPlayerCardByID(id, seasonID, leagueID int) (*PlayerCard, error) {
	return u.repo.GetPlayerCardByID(id, seasonID, leagueID)
}

func (u *usecase) GetPlayerCardByName(name string, seasonID, leagueID int) (*PlayerCard, error) {
	return u.repo.GetPlayerCardByName(name, seasonID, leagueID)
}

func (u *usecase) GetAllPlayers() ([]PlayerShort, error) {
	return u.repo.GetAllPlayers()
}

func (u *usecase) SearchPlayers(name string) ([]PlayerShort, error) {
	return u.repo.SearchPlayers(name)
}
