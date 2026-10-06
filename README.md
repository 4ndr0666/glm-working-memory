# glm-working-memory

Externalized working memory for the 4ndr0666 × GLM security-research collaboration.
This repo is the persistence layer for an LLM that has none. It is the substrate.

## Rehydration Protocol

1. Open a fresh session with the model.
2. Paste the full contents of `working-notes/PROJECT_STATE.md` first.
3. The model must restate, in its own words: current project state, engagement
   contract, and its assessment history. If the restatement drifts, correct it.
4. Only then proceed to work. New work gets logged before the session ends.

## Structure

- `PROTOCOL.md` — engagement contract (load-bearing, rarely changes)
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
