package main

import (
	"context"
	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/joho/godotenv"
	"log"
	"net/http"
	"os"
	"os/signal"
	"time"

	"english-backend/internal/config"
	httpx "english-backend/internal/http"
	"english-backend/internal/http/handlers"
	"english-backend/internal/repo"
)

func main() {
	log.SetFlags(log.LstdFlags | log.Lshortfile)
	log.SetOutput(os.Stdout)
	log.Println("MAIN START")
	_ = godotenv.Load()
	cfg := config.Load()

	pool, err := pgxpool.New(context.Background(), cfg.DBURL)

	if err != nil {
		log.Fatal(err)
	}
	defer pool.Close()

	// 1) Проверяем подключение к БД до старта HTTP-сервера
	log.Println("Pinging DB...")
	ctx, cancel := context.WithTimeout(context.Background(), 2*time.Second)
	defer cancel()

	if err := pool.Ping(ctx); err != nil {
		log.Fatalf("DB not reachable: %v", err)
	}
	log.Println("DB connection OK")

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
