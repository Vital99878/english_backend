package config

import (
	"log"
	"os"
	"strings"
)

type Config struct {
	Port        string
	DBURL       string
	CORSOrigins []string
}

func Load() Config {
	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}
	db := os.Getenv("DATABASE_URL")
	if db == "" {
		log.Fatal("DATABASE_URL is required")
	}
	origins := os.Getenv("CORS_ORIGINS")
	var cors []string
	if origins != "" {
		cors = strings.Split(origins, ",")
	}
	return Config{
		Port:        port,
		DBURL:       db,
		CORSOrigins: cors,
	}
}
