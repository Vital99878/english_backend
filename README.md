# english-backend

Minimal Go backend for *English Frontend* (cloze exercises).

## Quick start

```bash
cp .env.example .env   # set DATABASE_URL if running locally
docker compose up -d db
export DATABASE_URL=postgres://postgres:postgres@localhost:5432/english?sslmode=disable
make migrate
go run ./cmd/server
# or: docker compose up --build api
```

### API

- `GET /api/exercises/{id}` — get exercise by UUID
- `POST /api/submissions/cloze` — body: `{ "exercise_id": "...", "answers": { "b1": "went", "b2": "did" } }`

### Notes

- Uses chi, pgx, CORS.
- Stores submissions for reviewing mistakes later.
