package config

import (
	"log"
	//"os"

	"github.com/joho/godotenv"
)

func LoadEnv() {
	if err := godotenv.Load(); err != nil {
		log.Println("Нет .env файла, используются переменные среды")
	}
}
