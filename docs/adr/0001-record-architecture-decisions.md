# ADR-0001: Record architecture decisions

## Context

Important project decisions otherwise lose their rationale and can be revisited without the original constraints.

## Decision

Record consequential architecture decisions as short, numbered ADRs using the template in this directory.

## Alternatives rejected

- Relying on commit messages, which are not a durable home for decision context.
- Maintaining one evolving design document, which obscures when and why choices changed.

## Consequences

Decision context and trade-offs remain reviewable. Accepted decisions are append-only; superseding decisions should link to the earlier ADR.
