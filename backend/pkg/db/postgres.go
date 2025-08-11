package db

import (
    "database/sql"
    "log"
    "os"

    _ "github.com/lib/pq"
)

func NewPostgres() *sql.DB {
    dsn := os.Getenv("DB_URL")
    db, err := sql.Open("postgres", dsn)
    if err != nil {
        log.Fatalf("Ошибка подключения к базе: %s", err)
    }

    if err = db.Ping(); err != nil {
        log.Fatalf("База недоступна: %s", err)
    }

    return db
}