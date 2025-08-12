package league

type Usecase interface {
	CreateLeague(l League) (int, error)
}

type usecase struct {
	repo Repository
}

func NewUsecase(r Repository) Usecase {
	return &usecase{repo: r}
}

func (u *usecase) CreateLeague(l League) (int, error) {
	return u.repo.CreateLeague(l)
}
