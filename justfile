set shell := ["sh", "-cu"]

setup:
    if [ -d go ]; then (cd go && go mod download); else echo "Skipping Go setup (go/ is absent)"; fi
    if [ -d rust ]; then (cd rust && cargo fetch); else echo "Skipping Rust setup (rust/ is absent)"; fi

fmt:
    if [ -d go ]; then find go -name '*.go' -type f -print0 | xargs -0 -r gofmt -w; else echo "Skipping Go formatting (go/ is absent)"; fi
    if [ -d rust ]; then (cd rust && cargo fmt --all); else echo "Skipping Rust formatting (rust/ is absent)"; fi

lint:
    if [ -d go ]; then (cd go && go vet ./...); else echo "Skipping Go lint (go/ is absent)"; fi
    if [ -d rust ]; then (cd rust && cargo clippy --all-targets -- -D warnings); else echo "Skipping Rust lint (rust/ is absent)"; fi

test:
    if [ -d go ]; then (cd go && go test ./...); else echo "Skipping Go tests (go/ is absent)"; fi
    if [ -d rust ]; then (cd rust && cargo test); else echo "Skipping Rust tests (rust/ is absent)"; fi

bench:
    if [ -d go ]; then (cd go && go test -run '^$' -bench=. -benchmem ./...); else echo "Skipping Go benchmarks (go/ is absent)"; fi
    if [ -d rust ]; then (cd rust && cargo bench --bench baseline); else echo "Skipping Rust benchmarks (rust/ is absent)"; fi

db-up:
    docker compose up -d --wait db

db-down:
    docker compose down

psql:
    docker compose exec db psql -U "${POSTGRES_USER:-journey}" -d "${POSTGRES_DB:-journey}"

clean:
    if [ -d go ]; then (cd go && go clean); else echo "Skipping Go clean (go/ is absent)"; fi
    if [ -d rust ]; then (cd rust && cargo clean); else echo "Skipping Rust clean (rust/ is absent)"; fi
