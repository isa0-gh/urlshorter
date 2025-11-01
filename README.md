## url-shortener

A simple and minimal URL shortener written in Go.
It provides a lightweight HTTP API for creating and resolving short URLs.

---

### Features

* Minimal and fast — written in pure Go
* Simple UI
* Dockerized for easy deployment

Upcoming Features

[] CAPTCHA support for link creation
[] User authentication (login/register)
---

### Getting Started

#### 1. Clone the repository

```bash
git clone https://github.com/isa0-gh/url-shortener.git
cd url-shortener
```

#### 2. Build and run locally

```bash
go build -o server .
./server
```

By default, the server listens on `http://localhost:8080`.

---

### Run with Docker

#### Build the image

```bash
docker build -t url-shortener .
```

#### Run the container

```bash
docker run -p 8080:8080 url-shortener
```

---

### Directory Structure

```
.
.
├── database
│   ├── init.go
│   └── utils
│       └── utils.go
├── Dockerfile
├── go.mod
├── go.sum
├── LICENSE
├── main.go
├── models
│   └── models.go
├── README.md
├── routes
│   └── routes.go
└── static
    └── index.html
```

---

### Configuration

| Variable       | Default                 | Description                  |
| -------------- | ----------------------- | ---------------------------- |
| `PORT`         | `8080`                  | Server port                  |
| `BASE_URL`     | `http://localhost:8080` | Base URL for shortened links |
| `STORAGE_PATH` | `./data.db`             | Local storage file (if used) |

---

### License

MIT © 2025 — Isa
