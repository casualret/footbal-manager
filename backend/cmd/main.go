package main

import (
	"backend/config"
	"backend/internal/league"
	"backend/internal/player"
	"backend/internal/team"
	"backend/pkg/db"
	"github.com/gin-contrib/cors"
	"time"

	"github.com/gin-gonic/gin"
)

func main() {
	config.LoadEnv()
	database := db.NewPostgres()
	defer database.Close()

	playerRepo := player.NewRepository(database)
	playerUsecase := player.NewUsecase(playerRepo)
	playerHandler := player.NewHandler(playerUsecase)

	teamRepo := team.NewRepository(database)
	teamUsecase := team.NewUsecase(teamRepo)
	teamHandler := team.NewHandler(teamUsecase)

	leagueRepo := league.NewRepository(database)
	leagueUsecase := league.NewUsecase(leagueRepo)
	leagueHandler := league.NewHandler(leagueUsecase)

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

	playerHandler.RegisterRoutes(r)
	teamHandler.RegisterRoutes(r)
	leagueHandler.RegisterRoutes(r)
	r.Run(":8080")
}
