# syntax=docker/dockerfile:1.7
FROM golang:1.22 AS build
WORKDIR /src
COPY go.mod go.sum ./
RUN go mod download || true
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags="-s -w" -o /app/server ./cmd/server

FROM gcr.io/distroless/static:nonroot
WORKDIR /app
COPY --from=build /app/server /app/server
ENV PORT=8080
USER nonroot:nonroot
ENTRYPOINT ["/app/server"]
