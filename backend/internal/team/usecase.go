package team

type Usecase interface {
	GetTeamCardByID(id int) (*TeamCard, error)
	GetTeams() ([]TeamCard, error)
	CreateTeam(t NewTeam) (int, error)
	AssignTeamToLeagueSeason(tls TeamLeagueSeason) (int, error)
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

func (u *usecase) CreateTeam(t NewTeam) (int, error) {
	return u.repo.CreateTeam(t)
}

func (u *usecase) AssignTeamToLeagueSeason(tls TeamLeagueSeason) (int, error) {
	return u.repo.AssignTeamToLeagueSeason(tls)
}
