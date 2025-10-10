package handlers

import (
	"context"
	"encoding/json"
	"errors"
	"log"
	"net/http"
	"time"

	"github.com/go-chi/chi/v5"
	"github.com/jackc/pgx/v5"

	"english-backend/internal/repo"
	"english-backend/internal/service"
)

type ExerciseHandlers struct {
	Repo *repo.ExerciseRepo
}

func (h *ExerciseHandlers) Register(r *chi.Mux) {
	r.Route("/api", func(r chi.Router) {
		r.Get("/exercises/{id}", h.GetExercise)
		r.Post("/submissions/cloze", h.SubmitCloze)
	})
}

// небольшая утилита для безопасного логирования JSON
func toJSON(v any) string {
	b, _ := json.Marshal(v)
	return string(b)
}

func (h *ExerciseHandlers) GetExercise(w http.ResponseWriter, r *http.Request) {
	start := time.Now()
	id := chi.URLParam(r, "id")
	ctx := r.Context()

	log.Printf("[GetExercise] id=%s BEGIN", id)
	ex, err := h.Repo.GetExerciseByID(ctx, id)
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			log.Printf("[GetExercise] id=%s NOT_FOUND (%v) dur=%s", id, err, time.Since(start))
			http.Error(w, "not found", http.StatusNotFound)
			return
		}
		log.Printf("[GetExercise] id=%s DB_ERR=%v dur=%s", id, err, time.Since(start))
		http.Error(w, "db error", http.StatusInternalServerError)
		return
	}

	// Логируем ключевые поля, payload — коротко
	log.Printf("[GetExercise] id=%s OK kind=%s prompt=%q payload=%s dur=%s",
		id, ex.Kind, toJSON(ex.Payload), time.Since(start))

	writeJSON(w, ex, http.StatusOK)
}

type submitReq struct {
	Id      string            `json:"id"` // <-- фикс: правильное имя поля
	Answers map[string]string `json:"answers"`
}

func (h *ExerciseHandlers) SubmitCloze(w http.ResponseWriter, r *http.Request) {
	start := time.Now()

	var req submitReq
	if err := json.NewDecoder(r.Body).Decode(&req); err != nil {
		log.Printf("[SubmitCloze] BAD_JSON err=%v", err)
		http.Error(w, "bad json", http.StatusBadRequest)
		return
	}
	log.Printf("[SubmitCloze] IN exercise_id=%s answers=%s", req.Id, toJSON(req.Answers))

	if req.Id == "" || !service.IsAnswersShapeValid(req.Answers) {
		log.Printf("[SubmitCloze] INVALID_PAYLOAD id=%q answers=%s", req.Id, toJSON(req.Answers))
		http.Error(w, "invalid payload", http.StatusBadRequest)
		return
	}

	ctx := r.Context()
	ex, err := h.Repo.GetExerciseByID(ctx, req.Id)
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			log.Printf("[SubmitCloze] NOT_FOUND exercise_id=%s dur=%s", req.Id, time.Since(start))
			http.Error(w, "exercise not found", http.StatusNotFound)
			return
		}
		log.Printf("[SubmitCloze] DB_ERR exercise_id=%s err=%v", req.Id, err)
		http.Error(w, "db error", http.StatusInternalServerError)
		return
	}

	log.Printf("[SubmitCloze] EX_LOADED id=%s kind=%s payload=%s",
		ex.ID, ex.Kind, toJSON(ex.Payload))

	result := service.CheckCloze(ex.Payload, req.Answers)
	log.Printf("[SubmitCloze] CHECK_RESULT score=%.2f details=%s",
		result.Score, toJSON(result.Details))

	// best-effort сохранение
	if err := h.Repo.SaveSubmission(context.Background(), ex.ID, req.Answers, result.Score, result); err != nil {
		log.Printf("[SubmitCloze] SAVE_ERR exercise_id=%s err=%v", ex.ID, err)
	} else {
		log.Printf("[SubmitCloze] SAVE_OK exercise_id=%s", ex.ID)
	}

	log.Printf("[SubmitCloze] OK dur=%s", time.Since(start))
	writeJSON(w, result, http.StatusOK)
}

func writeJSON(w http.ResponseWriter, v any, code int) {
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(code)
	_ = json.NewEncoder(w).Encode(v)
}
