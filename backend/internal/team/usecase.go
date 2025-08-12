package team

import "backend/internal/player"

type Usecase interface {
	GetTeamCardByID(id int) (*TeamCard, error)
	GetTeamPlayers(id int) ([]player.PlayerShort, error)
}

type usecase struct {
	repo Repository
}

func NewUsecase(r Repository) Usecase {
	return &usecase{repo: r}
}

func (u *usecase) GetTeamCardByID(id int) (*TeamCard, error) {
	return u.repo.GetTeamByID(id)
}

func (u *usecase) GetTeamPlayers(id int) ([]player.PlayerShort, error) {
	return u.repo.GetPlayersByTeamID(id)
}
