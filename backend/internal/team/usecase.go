package team

type Usecase interface {
	GetTeamCardByID(id int) (*TeamCard, error)
	GetTeams() ([]TeamCard, error)
}

type usecase struct {
	repo Repository
}

func NewUsecase(r Repository) Usecase {
	return &usecase{repo: r}
}

func (u *usecase) GetTeamCardByID(id int) (*TeamCard, error) {
	team, err := u.repo.GetTeamByID(id)
	if err != nil {
		return nil, err
	}
	players, err := u.repo.GetPlayersByTeamID(id)
	if err != nil {
		return nil, err
	}
	team.Players = players
	return team, nil
}

func (u *usecase) GetTeams() ([]TeamCard, error) {
	return u.repo.GetTeams()
}
