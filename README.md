# Project name

## How to use this template

Create a repository from this template, replace this README with project-specific details, and delete the unused `go/` or `rust/` skeleton.

## Purpose

Describe the problem, who it affects, and why this project exists.

## Quick start

Clone the repository, install the pinned tools listed below or open it in the included devcontainer, then run `just setup` and `just test`; copy `.env.example` to `.env` before using the root Compose database.

## Design

Record requirements, capacity numbers, the data model, and important trade-offs.

## Benchmarks

Record the hardware, dataset and size, exact command, and result.

## Failure modes and fault tests

List expected failures and the fault tests that exercise them.

## Observability

Describe traces and state one measurable SLO.

## Cost note

Record AWS spend and whether teardown is done (yes/no).

## What I got wrong

Capture a mistaken assumption and what corrected it.

## Limitations

State what this project does not cover or guarantee.

## Toolchain versions

Pinned versions verified on 2026-11-16:

- Go 1.27.4 — [go.dev downloads](https://go.dev/dl/).
- Rust 1.100.0 — [Rust release announcement](https://blog.rust-lang.org/2026/11/12/Rust-1.100.0/).
- PostgreSQL 18.7 — [PostgreSQL supported versions](https://www.postgresql.org/support/versioning/).
- just 1.59.0 — [just manual](https://just.systems/man/en/) and its linked [release history](https://github.com/casey/just/releases).
- pre-commit 4.7.0 — [pre-commit documentation](https://pre-commit.com/).

## Getting started notes

Install the tools above, plus Docker Compose and pre-commit. Copy `.env.example` to `.env` before starting the local database. The Go and Rust directories are independent toolchain proofs; delete the unused skeleton in each project created from this template.
