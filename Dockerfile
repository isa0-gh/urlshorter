FROM golang:1.24-alpine AS builder

WORKDIR /app
COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY . .
RUN go build -o server -ldflags="-s -w" .

FROM alpine

COPY --from=builder /app/server /server
COPY --from=builder /app/static /static
EXPOSE 8080
ENTRYPOINT ["/server"]
