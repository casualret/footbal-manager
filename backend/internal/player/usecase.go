package player

type Usecase interface {
	GetPlayerCardByName(name string) (*PlayerCard, error)
	GetAllPlayers() ([]PlayerShort, error)
	SearchPlayers(name string) ([]PlayerShort, error)
}

type usecase struct {
	repo Repository
}

func NewUsecase(r Repository) Usecase {
	return &usecase{repo: r}
}

func (u *usecase) GetPlayerCardByName(name string) (*PlayerCard, error) {
	return u.repo.GetPlayerCardByName(name)
}

func (u *usecase) GetAllPlayers() ([]PlayerShort, error) {
	return u.repo.GetAllPlayers()
}

func (u *usecase) SearchPlayers(name string) ([]PlayerShort, error) {
	return u.repo.SearchPlayers(name)
}
