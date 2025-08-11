package main

import (
	"football-league/config"
	"football-league/internal/player"
	"football-league/pkg/db"
	"github.com/gin-contrib/cors"
	"time"

	"github.com/gin-gonic/gin"
)

func main() {
	config.LoadEnv()
	database := db.NewPostgres()
	defer database.Close()

	repo := player.NewRepository(database)
	usecase := player.NewUsecase(repo)
	handler := player.NewHandler(usecase)

	r := gin.Default()
	r.Static("/static", "./static")

	r.Use(cors.New(cors.Config{
		AllowOrigins:     []string{"http://localhost:5173"},
		AllowMethods:     []string{"GET", "POST", "OPTIONS"},
		AllowHeaders:     []string{"Origin", "Content-Type", "Accept"},
		ExposeHeaders:    []string{"Content-Length"},
		AllowCredentials: true,
		MaxAge:           12 * time.Hour,
	}))

	handler.RegisterRoutes(r)
	r.Run(":8080")
}
