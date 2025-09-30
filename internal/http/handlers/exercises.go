package handlers

import (
	"context"
	"encoding/json"
	"fmt"
	"net/http"

	"english-backend/internal/repo"
	"english-backend/internal/service"

	"github.com/go-chi/chi/v5"
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

func (h *ExerciseHandlers) GetExercise(w http.ResponseWriter, r *http.Request) {
	id := chi.URLParam(r, "id")
	ctx := r.Context()

	ex, err := h.Repo.GetExerciseByID(ctx, id)
	fmt.Println(ex)
	if err != nil {
		http.Error(w, "not found", http.StatusNotFound)
		return
	}
	writeJSON(w, ex, http.StatusOK)
}

type submitReq struct {
	ExerciseID string            `json:"id"`
	Answers    map[string]string `json:"fields"`
}

func (h *ExerciseHandlers) SubmitCloze(w http.ResponseWriter, r *http.Request) {
	var req submitReq
	if err := json.NewDecoder(r.Body).Decode(&req); err != nil {
		http.Error(w, "bad json", http.StatusBadRequest)
		return
	}
	if req.ExerciseID == "" || !service.IsAnswersShapeValid(req.Answers) {
		http.Error(w, "invalid payload", http.StatusBadRequest)
		return
	}

	ctx := r.Context()
	ex, err := h.Repo.GetExerciseByID(ctx, "37455260-afc2-4d0a-a0c7-d83709c7beb5")
	if err != nil {
		http.Error(w, "exercise not found", http.StatusNotFound)
		return
	}
	fmt.Println(ex.Payload, req.Answers)

	result := service.CheckCloze(ex.Payload, req.Answers)

	// Save submission (best-effort; errors ignored for simplicity)
	_ = h.Repo.SaveSubmission(context.Background(), ex.ID, req.Answers, result.Score, result)

	writeJSON(w, result, http.StatusOK)
}

func writeJSON(w http.ResponseWriter, v any, code int) {
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(code)
	_ = json.NewEncoder(w).Encode(v)
}
