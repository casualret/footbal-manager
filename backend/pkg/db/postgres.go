package db

import (
	"context"
	"database/sql"
	"log"
	"net/url"
	"os"
	"strings"
	"time"

	_ "github.com/lib/pq"
)

func NewPostgres() *sql.DB {
	dsn := os.Getenv("DB_URL")
	if dsn == "" {
		dsn = os.Getenv("DATABASE_URL")
	}
	if dsn == "" {
		log.Fatal("DB_URL/DATABASE_URL не задан")
	}

	// Гасим переопределения от PG* (частая причина входа как postgres)
	_ = os.Unsetenv("PGUSER")
	_ = os.Unsetenv("PGPASSWORD")
	_ = os.Unsetenv("PGHOST")
	_ = os.Unsetenv("PGDATABASE")
	_ = os.Unsetenv("PGPORT")
	_ = os.Unsetenv("PGSSLMODE")

	// Безопасный лог DSN
	safe := dsn
	if u, err := url.Parse(dsn); err == nil && u.User != nil {
		if _, ok := u.User.Password(); ok {
			u.User = url.UserPassword(u.User.Username(), "*****")
		}
		safe = u.String()
	} else {
		safe = strings.ReplaceAll(safe, "password=", "password=*****")
	}
	log.Printf("Connecting to Postgres: %s", safe)

	db, err := sql.Open("postgres", dsn)
	if err != nil {
		log.Fatalf("Ошибка подключения к базе: %v", err)
	}
	db.SetMaxOpenConns(10)
	db.SetMaxIdleConns(10)
	db.SetConnMaxLifetime(30 * time.Minute)

	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()
	if err := db.PingContext(ctx); err != nil {
		log.Fatalf("База недоступна: %v", err)
	}
	return db
}
