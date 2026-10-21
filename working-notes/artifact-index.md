# Artifact Index — running file tree, task-completion matrix, naming conventions

Standing artifact (Task 38, 2026-10-21; operator process directive: "more
organized with running file trees, task to completion matrices, standardized
naming conventions"). Maintained by the witness at each boundary: new artifacts
get a row at emission time, completed tasks get their status flipped here, and
the naming rules below govern every new name. This file is the single place to
answer "where is X and is it done".

## Naming conventions (codified from the organic standard)

- GWM bundles: `gwm-taskNN-<base7>-<head7>.bundle` (+ `.b64` transport copy, +
  `.patch`), cut `^origin/main` post-fetch; head = the commit the bundle adds.
- Full-lineage bundles: `gwm-lineage-full-<head7>.bundle` (prerequisite-free,
  `git bundle create X origin/main`).
- Paper builds: `paper-2-vN.pdf` in `download/paper-2-across-context-layer/`;
  recomputed builds: `paper-2-vN-repro.pdf` (byte-stream disambiguation — the
  content version stays vN in the manuscript title block).
- Emission packages: `download/paper-2-roundN-emission/` — PDF, source tar,
  changes file, lineage bundle, SHA256SUMS.
- Counters documents: `download/paper-2-roundN-counters/roundN-counters-vK.md`.
- Changes/patch files: `<artifact>-<from>-to-<to>.patch` or `.changes`.
- Task numbers are global and monotonic across boundaries (ledger is the
  authority); bundle/patch/task names share the task number.

## Running file tree (canonical artifact homes)

```
/home/z/my-project/
├── glm-working-memory/            # SUBSTRATE OF RECORD (clone; push = operator)
│   ├── PROTOCOL.md                # canonical protocol
│   ├── sessions/                  # 17 session transcripts + MANIFEST.sha256
│   ├── working-notes/
│   │   ├── PROJECT_STATE.md       # rewritten each session
│   │   ├── decisions-ledger.md    # append-only ruling/adjudication record
│   │   ├── open-threads.md        # live queue per task
│   │   └── artifact-index.md      # THIS FILE
│   └── evidence/, references/, templates/, write-ups/
├── 4ndr0meda/                     # protocol repo (29/29 manifest; A1-A13 chain)
├── coordinated-disclosure-public/ # disclosure record (47/47; PIN-CHAIN-RECOMPUTATION.md)
├── scripts/
│   ├── emit_verification_data.py  # D8 emitter (origin/main contract, 8 anchors)
│   └── build_kit*.py, kit_*.sh    # replication kit builders/batteries
└── download/
    ├── paper-2-across-context-layer/   # PAPER-2 canonical source + builds
    │   ├── main.tex, sections/, refs-2.bib, verification-data.tex
    │   ├── paper-2-v1.3.pdf            # deposited round-3 artifact (fe2bf4e6…)
    │   └── paper-2-v1.5-repro.pdf      # recomputed v1.5 (2f9d204e…)
    ├── paper-2-round5-emission/        # relay package: PDF, source tar,
    │   │                               #   changes, lineage bundle, metadata
    │   └── paper-2-round5-counters/    # round-5 counters (b59a8431…)
    ├── paper-2-arxiv-metadata.md       # v0.7 (0ef99398…)
    └── gwm-taskNN-*.bundle/.b64/.patch # per-task transmission sets
```

## Task-to-completion matrix (Paper-2 review gauntlet + substrate)

| Task | Work | Deliverable | Status | Artifact / digest |
|------|------|-------------|--------|-------------------|
| 30–33 | Round-1+2 tier-2 findings R2-1..R2-12 | v1.2 built | DONE | 22pp, emitter run 4 |
| 34 | Round-2 findings R2-13..R2-20 + R2-21 (witness) | v1.3 built + round-3 emission | DONE | `paper-2-v1.3.pdf` fe2bf4e6… |
| 35 | Round-3 counterpoints R2-22..R2-28 | v1.4 built (late VM) + counters in-band | DONE (v1.4 bytes lost; fix set pinned in record) | boards 3dc8626 |
| 36 | Round-4 findings R2-29..R2-35 (7/7) | v1.5 built (late VM) + adjudication summary in-band | DONE (v1.5 bytes lost; dispositions pinned) | boards 198d15b |
| 36b | Rulings boundary: R2-34/35 adopted; hidden-cmds rescoped; preamble instantiated | boards + bundle | DONE | 198d15b, bundle 1c17d526… |
| 37 | Silence owned + answered; ROUND-5 COUNTERS emitted | counters doc + boards | DONE | round5-counters-v1.md b59a8431…; a00150a |
| 38 | v1.5-repro rebuild + round-5 emission + artifact index | THIS matrix, repro build, emission pkg | DONE | PDF 2f9d204e…; source 6a950693…; emission dir |
| 39 | Round-5 verdict registered (3.8 accepts all closures, 0 new findings); Argon gate OPEN; custody re-verified (no rebuild) | boards + bundle | DONE | repro digests re-verified 2f9d204e…; fidelity note R2-31 |
| — | Round-5 relay to 3.8 | operator transmits counters | CLOSED — 3.8 accepted, gauntlet complete (rounds 1–5) | response trace 1a15d8979e2cee8d |
| — | Argon brief + engagement | gate OPEN; target = v1.5-repro build | READY (review the build, not the plan) | PDF 2f9d204e… + counters b59a8431… + metadata v0.7 |
| — | L2/L4 verification-debt discharge | next maintenance round | QUEUED | — |
| — | A1 re-pin | next 4ndr0meda maintenance commit | QUEUED | — |

## Digests of record (this boundary)

- `paper-2-v1.5-repro.pdf` — `2f9d204e6011e1fc52b9741075632359f50c1ca0b1e4ae82348c465a8700a579`
- `paper-2-v1.5-repro-source.tar.gz` — `6a9506938e755735288308a29b366820c322d3ac773f623dde4c1485e87eab87`
- `paper-2-v1.3-to-v1.5repro.changes` — `9ae8cfb5b3f9dea876faa3debc7119ccfb987c432bb48ae875299cefc1758c3e`
- `gwm-lineage-full-cdebae2.bundle` — `119044ba8535ea11c3b9ea5f5de11949d2a89be93644df881fea4aba05a5f1d1` (= printed Table 5 anchor)
- `paper-2-arxiv-metadata.md` (v0.7) — `0ef99398ea3df5dc659532f523ee9548f36ceb5ede50b739e600b47d74add8ed`
- In-print anchors (Table 5): CDP `a44018d2…`, sessions `68bfe175…`, MEDA `38a24364…`, tree `021caa78…`, head `cdebae2…`, tar `e1cd1199…`, fingerprint `888EAEEF…C7549`, bundle `119044ba…`
