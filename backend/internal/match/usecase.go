package match

// Usecase provides business logic for matches and related entities
type Usecase interface {
	CreateRound(nr NewRound) (int, error)
	CreateMatch(nm NewMatch) (int, error)
	AddMatchParticipation(mp MatchParticipation) (int, error)
	AddPlayerStats(ps PlayerStats) (int, error)
	UpdateMatchScore(id int, ms MatchScore) error
	ListMatches() ([]Match, error)
	GetMatchDetails(id int) (*MatchDetails, error)
}

type usecase struct {
	repo Repository
}

func NewUsecase(r Repository) Usecase {
	return &usecase{repo: r}
}

func (u *usecase) CreateRound(nr NewRound) (int, error) {
	return u.repo.CreateRound(nr)
}

func (u *usecase) CreateMatch(nm NewMatch) (int, error) {
	return u.repo.CreateMatch(nm)
}

func (u *usecase) AddMatchParticipation(mp MatchParticipation) (int, error) {
	return u.repo.CreateMatchParticipation(mp)
}

func (u *usecase) AddPlayerStats(ps PlayerStats) (int, error) {
	return u.repo.CreatePlayerStats(ps)
}

func (u *usecase) UpdateMatchScore(id int, ms MatchScore) error {
	return u.repo.UpdateMatchScore(id, ms)
}

func (u *usecase) ListMatches() ([]Match, error) {
	return u.repo.ListMatches()
}

func (u *usecase) GetMatchDetails(id int) (*MatchDetails, error) {
	return u.repo.GetMatchDetails(id)
}
