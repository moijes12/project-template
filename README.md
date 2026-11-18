# Project template

## How to use this template

Delete this section after creating a project; rename the Go module and Rust package, copy `.env.example` to `.env`, and delete either unused language skeleton.

## Tool versions

Versions pinned in this template (checked 2026-11-18): Go 1.27.4 ([go.dev](https://go.dev/dl/)), Rust 1.100.0 ([stable channel manifest](https://static.rust-lang.org/dist/channel-rust-stable.toml)), PostgreSQL 18.7 ([supported releases](https://www.postgresql.org/support/versioning/)), just 1.59.0 ([just releases](https://github.com/casey/just/releases)), and pre-commit 4.7.0 ([pre-commit.com](https://pre-commit.com/)). GitHub Actions use verified release SHAs, documented inline in the workflow.

## Purpose

One line: explain the problem this project solves and who it serves.

## Quick start

Install the pinned Go, Rust, and just tools plus Docker Compose, pre-commit 4.7.0, and ShellCheck; on a clean clone run `cp .env.example .env`, `just setup`, `just test`, and `pre-commit run --all-files`.

## Design

One line: summarize requirements, capacity numbers, data model, and trade-offs.

## Benchmarks

One line: report hardware, dataset, command, and result; delete unused skeletons per project.

## Failure modes and fault tests

One line: list expected failures and how each is tested.

## Observability

One line: describe traces and state one measurable SLO.

## Cost note

One line: record AWS spend and whether teardown is done (yes/no).

## What I got wrong

One line: record a wrong assumption and what changed.

## Limitations

One line: state the most important known limitation.
