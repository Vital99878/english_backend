package repo

import (
	"context"
	"encoding/json"
	"errors"

	"english-backend/internal/models"
	"github.com/jackc/pgx/v5/pgxpool"
)

type ExerciseRepo struct {
	db *pgxpool.Pool
}

func NewExerciseRepo(db *pgxpool.Pool) *ExerciseRepo { return &ExerciseRepo{db: db} }

func (r *ExerciseRepo) GetExerciseByID(ctx context.Context, id string) (*models.Exercise, error) {
	row := r.db.QueryRow(ctx, `SELECT id, kind, prompt, payload FROM exercises WHERE id=$1`, id)
	var e models.Exercise
	var raw []byte
	if err := row.Scan(&e.ID, &e.Kind, &e.Prompt, &raw); err != nil {
		return nil, err
	}
	if err := json.Unmarshal(raw, &e.Payload); err != nil {
		return nil, err
	}
	if e.Kind != "cloze" {
		return nil, errors.New("unsupported exercise kind")
	}
	return &e, nil
}

func (r *ExerciseRepo) SaveSubmission(ctx context.Context, exerciseID string, answers any, score float64, result any) error {
	_, err := r.db.Exec(ctx, `INSERT INTO submissions (exercise_id, answers, score, result) VALUES ($1, $2::jsonb, $3, $4::jsonb)`,
		exerciseID, answers, score, result)
	return err
}
