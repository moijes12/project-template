set shell := ["bash", "-eu", "-o", "pipefail", "-c"]

setup:
    if [ -d go ]; then (cd go && go mod download); else echo "Skipping Go: go/ is absent."; fi
    if [ -d rust ]; then cargo fetch --locked --manifest-path rust/Cargo.toml; else echo "Skipping Rust: rust/ is absent."; fi

fmt:
    if [ -d go ]; then gofmt -w go/*.go; else echo "Skipping Go: go/ is absent."; fi
    if [ -d rust ]; then cargo fmt --manifest-path rust/Cargo.toml; else echo "Skipping Rust: rust/ is absent."; fi

lint:
    if [ -d go ]; then (cd go && go vet ./...); else echo "Skipping Go: go/ is absent."; fi
    if [ -d rust ]; then cargo clippy --all-targets --manifest-path rust/Cargo.toml -- -D warnings; else echo "Skipping Rust: rust/ is absent."; fi

test:
    if [ -d go ]; then (cd go && go test ./...); else echo "Skipping Go: go/ is absent."; fi
    if [ -d rust ]; then cargo test --manifest-path rust/Cargo.toml; else echo "Skipping Rust: rust/ is absent."; fi

bench:
    if [ -d go ]; then (cd go && go test -bench=. ./...); else echo "Skipping Go: go/ is absent."; fi
    if [ -d rust ]; then cargo bench --manifest-path rust/Cargo.toml; else echo "Skipping Rust: rust/ is absent."; fi

db-up:
    docker compose -f .devcontainer/docker-compose.yml up -d --wait db

db-down:
    docker compose -f .devcontainer/docker-compose.yml down

psql:
    psql -h localhost -p 5432 -U postgres -d postgres

clean:
    if [ -d go ]; then (cd go && go clean); else echo "Skipping Go: go/ is absent."; fi
    if [ -d rust ]; then cargo clean --manifest-path rust/Cargo.toml; else echo "Skipping Rust: rust/ is absent."; fi
