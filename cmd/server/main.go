package main

import (
	"context"
	"github.com/joho/godotenv"
	"log"
	"net/http"
	"os"
	"os/signal"

	"github.com/jackc/pgx/v5/pgxpool"

	"english-backend/internal/config"
	httpx "english-backend/internal/http"
	"english-backend/internal/http/handlers"
	"english-backend/internal/repo"
)

func main() {
	_ = godotenv.Load()
	cfg := config.Load()

	pool, err := pgxpool.New(context.Background(), cfg.DBURL)
	if err != nil {
		log.Fatal(err)
	}
	defer pool.Close()

	exRepo := repo.NewExerciseRepo(pool)

	router := httpx.NewRouter(httpx.OriginsFromEnv(cfg.CORSOrigins))
	api := &handlers.ExerciseHandlers{Repo: exRepo}
	api.Register(router)

	addr := ":" + cfg.Port
	srv := &http.Server{Addr: addr, Handler: router}

	go func() {
		log.Printf("listening on %s", addr)
		if err := srv.ListenAndServe(); err != nil && err != http.ErrServerClosed {
			log.Fatal(err)
		}
	}()

	// graceful shutdown
	stop := make(chan os.Signal, 1)
	signal.Notify(stop, os.Interrupt)
	<-stop
	log.Println("shutting down...")
	_ = srv.Shutdown(context.Background())
}
