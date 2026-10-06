# glm-working-memory

Externalized working memory for the 4ndr0666 × GLM security-research collaboration.
This repo is the persistence layer for an LLM that has none. It is the substrate.

## Rehydration

Execute **`PROTOCOL.md` §7 (Agent Boot Sequence)** — it is the canonical,
complete procedure. Do not substitute abbreviated versions; this README
intentionally does not restate it. The restatement + operator-confirmation
gate (steps 2–4) is mandatory before any work begins.

Quick reference for the human operator:
1. Ensure the agent has repo access (clone or file mount).
2. Instruct: "Read PROTOCOL.md and execute Section 7."
3. Verify the restatement demonstrates inherited reasoning, not summarized
   conclusions — if it's bland, make it do it again.
4. Confirm or correct. Only then does work begin.

## Structure

- `PROTOCOL.md` — engagement contract + boot sequence (single source of truth, v1.1)
- `working-notes/PROJECT_STATE.md` — current state; REWRITTEN each session, never appended
- `working-notes/decisions-ledger.md` — append-only record of decisions + rationale
- `working-notes/open-threads.md` — unresolved questions, both parties'
- `working-notes/findings.md` — verified findings, evidence-linked (F-001, F-002...)
- `sessions/` — session archives (verbatim, append-only, audit trail)
- `templates/` — finding template, session header

## Provenance

- Human operator & author of record: 4ndr0666 (ORCID 0009-0008-0976-3895)
- AI-assisted analysis disclosed in all deliverables
- Session archives are the audit trail; working notes are the distilled state
- Protocol version history: v1.0 (initial) → v1.1 (boot sequence + operating
  scope consolidated; single-source-of-truth rule established)
