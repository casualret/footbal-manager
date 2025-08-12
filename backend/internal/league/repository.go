package league

import "database/sql"

type Repository interface {
	CreateLeague(l League) (int, error)
}

type repository struct {
	db *sql.DB
}

func NewRepository(db *sql.DB) Repository {
	return &repository{db: db}
}

func (r *repository) CreateLeague(l League) (int, error) {
	var id int
	err := r.db.QueryRow(
		"INSERT INTO leagues (name, level) VALUES ($1, $2) RETURNING id",
		l.Name, l.Level,
	).Scan(&id)
	if err != nil {
		return 0, err
	}
	return id, nil
}
