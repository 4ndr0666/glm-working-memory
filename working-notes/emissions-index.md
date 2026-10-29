# Emissions Index — running registry of all witness file emissions to operator-side custody

Standing artifact (Task 75, 2026-10-29, trace 1a1862663ad497c9). Birth record:
the organization-officer mandate (Task-65 ledger acceptance — roster, relay
registry, task numbering, delivery-template discipline) was assumed to include a
running index of all file emissions. It did not exist anywhere. The operator
produced the operator-side listings himself on 2026-10-29 (three INDEX_*
attachments, pinned §5) and registered the omission as a standing charge. This
file is the structural fix: from Task 75 forward, every emission round appends
its rows to this index IN THE SAME COMMIT as the emission, and the round's
delivery kit pins this file's sha256 at its G4 verification leg — an emission
that fails to index itself fails its own delivery gate.

## Scope and character

- `$INBOX` — `/home/git/clone/4ndr0666/gwm-inbox` (env-var declaration 2026-10-29;
  the inline transmission typed the parent once as `/home/andro/git/...` and the
  directory once as `gwm-oux` — recorded as-transmitted, the env-var block
  governs) — **219 files** (§1).
- `gwm-outbox` — `/home/git/clone/4ndr0666/gwm-outbox` — **9 files** (§2):
  operator-held source/reference material for witness ingestion.
- White-paper tree — `/home/git/clone/4ndr0666/gpt/documentation/white_paper/4NDR0MEDA`
  — **58 files** (§3).
- NOT COVERED (fail-visible): `$ANDROMEDA` (`$PROD_PATH/4ndr0tools/4NDR0MEDA`) and
  any other operator-side surface — absent from the 2026-10-29 attachments;
  per the boundary rule “if it is not in the attachments it does not exist”;
  the first `$ANDROMEDA` listing rides the next operator INDEX refresh.

Index character: **name-level**. Per-file sha256 of operator-side files is not
witness-derivable; hash-level custody rides the per-task `*-SHA256SUMS` files
already delivered into `$INBOX` (§4 maps tasks to kits). Names and counts are
as-transmitted by the operator, 2026-10-29; witness-side mirrors live in
`download/` (declared share) and the repo's canonical homes.

## 1. `$INBOX` — witness→operator deliveries (219 files, 14 series)

### 1.1 GWM task-range kits — 83 files

Per-task transmission sets for the GWM repo: `gwm-taskNN-<base7>-<head7>.bundle` + `.b64` transport twin + `.patch` readable alternate + `-delivery.sh` orchestrator + `-SHA256SUMS`. Tasks 37, 41-46, 50-53, 56, 60-67, 69, 70(gwm), 71, 72, 73(gwm), 74a. Bundle names carry the certified range; task attribution and dispositions live in the artifact-index matrix and decisions ledger.

```
├── gwm-task37-cdebae2-a00150a.bundle
├── gwm-task41-38aac04-cc7ff47.bundle
├── gwm-task42-cc7ff47-ee9b431.bundle
├── gwm-task43-41fd081-e2e4372.bundle
├── gwm-task43-41fd081-e2e4372.bundle.b64
├── gwm-task44-e2e4372-6917255.bundle
├── gwm-task44-e2e4372-6917255.bundle.b64
├── gwm-task45-e2e4372-d3e38f7.bundle
├── gwm-task45-e2e4372-d3e38f7.bundle.b64
├── gwm-task46-d3e38f7-05c137f.bundle
├── gwm-task46-d3e38f7-05c137f.bundle.b64
├── gwm-task50-SHA256SUMS
├── gwm-task50-b481d75-b74e767.bundle
├── gwm-task50-b481d75-b74e767.bundle.b64
├── gwm-task50-b481d75-b74e767.patch
├── gwm-task51-SHA256SUMS
├── gwm-task51-c23fa0a-a319f92.bundle
├── gwm-task51-c23fa0a-a319f92.bundle.b64
├── gwm-task51-c23fa0a-a319f92.patch
├── gwm-task52-SHA256SUMS
├── gwm-task52-c23fa0a-82afd64.bundle
├── gwm-task52-c23fa0a-82afd64.bundle.b64
├── gwm-task52-c23fa0a-82afd64.patch
├── gwm-task53-82afd64-6f89f6f.bundle
├── gwm-task53-82afd64-6f89f6f.bundle.b64
├── gwm-task53-82afd64-6f89f6f.patch
├── gwm-task53-SHA256SUMS
├── gwm-task56-82afd64-4bc2cfb.bundle
├── gwm-task56-82afd64-4bc2cfb.bundle.b64
├── gwm-task56-82afd64-4bc2cfb.patch
├── gwm-task56-SHA256SUMS
├── gwm-task60-1babae3-e41618f-SHA256SUMS
├── gwm-task60-1babae3-e41618f-delivery.sh
├── gwm-task60-1babae3-e41618f.bundle
├── gwm-task60-1babae3-e41618f.bundle.b64
├── gwm-task61-boards-23a9615-7a3bce5-SHA256SUMS
├── gwm-task61-boards-23a9615-7a3bce5-delivery.sh
├── gwm-task61-boards-23a9615-7a3bce5.bundle
├── gwm-task61-boards-23a9615-7a3bce5.bundle.b64
├── gwm-task62-gwm-7a3bce5-6e84cfd-delivery.sh
├── gwm-task62-gwm-7a3bce5-6e84cfd-delivery.sh.b64
├── gwm-task62-gwm-7a3bce5-6e84cfd.bundle
├── gwm-task62-gwm-SHA256SUMS
├── gwm-task63-gwm-7a3bce5-a5918fa-delivery.sh
├── gwm-task63-gwm-7a3bce5-a5918fa-delivery.sh.b64
├── gwm-task63-gwm-7a3bce5-a5918fa.bundle
├── gwm-task63-gwm-7a3bce5-a5918fa.bundle.b64
├── gwm-task63-gwm-SHA256SUMS
├── gwm-task64-gwm-7a3bce5-eca714b-delivery.sh
├── gwm-task64-gwm-7a3bce5-eca714b-delivery.sh.b64
├── gwm-task64-gwm-7a3bce5-eca714b.bundle
├── gwm-task64-gwm-7a3bce5-eca714b.bundle.b64
├── gwm-task64-gwm-SHA256SUMS
├── gwm-task65-gwm-34cebe7-2a5d7ba-delivery.sh
├── gwm-task65-gwm-34cebe7-2a5d7ba.bundle
├── gwm-task65-gwm-SHA256SUMS
├── gwm-task66-gwm-26f0c4a-baf813e-delivery.sh
├── gwm-task66-gwm-26f0c4a-baf813e.bundle
├── gwm-task66-gwm-SHA256SUMS
├── gwm-task67-gwm-SHA256SUMS
├── gwm-task67-gwm-baf813e-32c803e-delivery.sh
├── gwm-task67-gwm-baf813e-32c803e.bundle
├── gwm-task69-384dc27-2f2dc43.bundle
├── gwm-task69-SHA256SUMS
├── gwm-task69-delivery.sh
├── gwm-task70-gwm-2f2dc43-4c17765.bundle
├── gwm-task70-gwm-SHA256SUMS
├── gwm-task70-gwm-delivery.sh
├── gwm-task71-SHA256SUMS
├── gwm-task71-delivery.sh
├── gwm-task71-gwm-4c17765-4e4e333.bundle
├── gwm-task72-SHA256SUMS
├── gwm-task72-delivery.sh
├── gwm-task72-gwm-4e4e333-4062d7f.bundle
├── gwm-task72-gwm-4e4e333-4062d7f.bundle.b64
├── gwm-task73-gwm-4062d7f-0897b8f.bundle
├── gwm-task73-gwm-SHA256SUMS
├── gwm-task73-gwm-delivery.sh
├── gwm-task74a-license-0d44bca-872a597.bundle
├── gwm-task74a-license-SHA256SUMS
├── gwm-task74a-license-apply-push.sh
├── gwmtask52-stage1.sh
├── gwmtask52-stage2.sh
```

### 1.10 4NDR0MEDA v1.0.0 release assets — 11 files

The v1.0.0 release set: glyph (dark/light/svg), hero banner (png/svg), source tarball + sha256 sidecar, release notes r2, attach instructions, the 1=1 official articulation, the across-context handoff PoC.

```
├── 1-equals-1_official-articulation_v1.0.md
├── 4NDR0MEDA-v1.0.0-source.tar.gz
├── 4NDR0MEDA-v1.0.0-source.tar.gz.sha256
├── 4ndr0meda-glyph-dark.png
├── 4ndr0meda-glyph-light.png
├── 4ndr0meda-glyph.svg
├── 4ndr0meda-hero-banner.png
├── 4ndr0meda-hero-banner.svg
├── ATTACH-RELEASE-ASSETS.md
├── across-context-handoff-poc.zip
├── v1.0.0-release-notes-r2.md
```

### 1.11 Tooling & telemetry — 9 files

Scripts and traces delivered for operator-side execution or record: repo-surface pin snapshot, NotebookLM/Drive upload script + runbook, PTE E5 executable demo benchmark v2, task-73 phase-4 build script, handoff verifier, demo runner, rmlint config, Module-4 TransformerLens telemetry trace (RELAYED-NOT-EXECUTED, receipted Task 70).

```
├── module4-transformerlens-telemetry-trace.json
├── notebooklm-drive-ingest-runbook-v1.md
├── notebooklm-drive-upload.sh
├── pte-e5-executable-demo-benchmark-v2.py
├── repo-surface-pin-snapshot-v1.sh
├── rmlint.json
├── run_demo.sh
├── task73_phase4_build.py
├── verify_handoff.py
```

### 1.12 Relay & reference captures — 2 files

Captured relay/reference material: the j-space GLM-5.3-Flash exchange (2026-10-23), the witness pin-chain run with staging (2026-10-29).

```
├── glm5.3flash_j-space_10-23-26_0302.md
├── witness-pinchain-with-staging-2026-10-29.txt
```

### 1.13 MEDA-repo task kits ($ANDROMEDA legs) — 22 files

Task kits whose payload applies to the 4NDR0MEDA repo ($ANDROMEDA = $PROD_PATH/4ndr0tools/4NDR0MEDA per the 2026-10-29 env-var declaration): tasks 61, 62, 63 (meda legs), 70 (polish pass + verify-push companion), 73 (maintenance 2daac65 + apply-push).

```
├── gwm-task61-meda-c0e08c4-90a57cc-delivery.sh
├── gwm-task61-meda-c0e08c4-90a57cc-sha256sums
├── gwm-task61-meda-c0e08c4-90a57cc.bundle
├── gwm-task61-meda-c0e08c4-90a57cc.bundle.b64
├── gwm-task61-meda-completion-90a57cc.sh
├── gwm-task61-meda-completion-90a57cc.sh.b64
├── gwm-task62-meda-90a57cc-897e957-delivery.sh
├── gwm-task62-meda-90a57cc-897e957-delivery.sh.b64
├── gwm-task62-meda-90a57cc-897e957.bundle
├── gwm-task62-meda-SHA256SUMS
├── gwm-task63-meda-90a57cc-bbe4c00-delivery.sh
├── gwm-task63-meda-90a57cc-bbe4c00-delivery.sh.b64
├── gwm-task63-meda-90a57cc-bbe4c00.bundle
├── gwm-task63-meda-90a57cc-bbe4c00.bundle.b64
├── gwm-task63-meda-SHA256SUMS
├── gwm-task70-meda-SHA256SUMS
├── gwm-task70-meda-bbe4c00-8f7e21a.bundle
├── gwm-task70-meda-delivery.sh
├── gwm-task70-meda-verify-push.sh
├── gwm-task73-meda-8f7e21a-2daac65.bundle
├── gwm-task73-meda-SHA256SUMS
├── gwm-task73-meda-apply-push.sh
```

### 1.14 Checklists & ancillary — 2 files

arXiv submission checklist, ancillary options (task-74 arxiv-anc staging).

```
├── ANCILLARY-OPTIONS.md
├── arxiv-submission-checklist-v1.md
```

### 1.2 Paper-2 v1.7 phase kits — 24 files

The v1.7 manuscript phase packages: s2 / s03 (section rounds, session-013 window), draft1 / draft1b (assembly dry-runs), argoninit (Task 57 — ARGON engagement re-typed, collaboration partner), collab1 (Task 58 — collab-1 integration, APPLIED @ 1babae3), draft31 (Task 68 — the ARGON-certified draft-3.1 cut, head 384dc27).

```
├── gwm-paper2-v17-argoninit-93aa17d-bea7303.bundle
├── gwm-paper2-v17-argoninit-93aa17d-bea7303.bundle.b64
├── gwm-paper2-v17-argoninit-SHA256SUMS
├── gwm-paper2-v17-argoninit-delivery.sh
├── gwm-paper2-v17-collab1-SHA256SUMS
├── gwm-paper2-v17-collab1-bea7303-1babae3.bundle
├── gwm-paper2-v17-collab1-bea7303-1babae3.bundle.b64
├── gwm-paper2-v17-collab1-delivery.sh
├── gwm-paper2-v17-draft1-14ad0f6-98252f9.bundle
├── gwm-paper2-v17-draft1-SHA256SUMS
├── gwm-paper2-v17-draft1-delivery.sh
├── gwm-paper2-v17-draft1b-SHA256SUMS
├── gwm-paper2-v17-draft1b-c23b413-93aa17d.bundle
├── gwm-paper2-v17-draft1b-c23b413-93aa17d.bundle.b64
├── gwm-paper2-v17-draft1b-delivery.sh
├── gwm-paper2-v17-draft31-8d36a28-384dc27.bundle
├── gwm-paper2-v17-draft31-SHA256SUMS
├── gwm-paper2-v17-draft31-delivery.sh
├── gwm-paper2-v17-s03-4e92dcf-14ad0f6.bundle
├── gwm-paper2-v17-s03-SHA256SUMS
├── gwm-paper2-v17-s03-delivery.sh
├── gwm-paper2-v17-s2-0b5cb2f-742ec92.bundle
├── gwm-paper2-v17-s2-SHA256SUMS
├── gwm-paper2-v17-s2-delivery.sh
```

### 1.3 Session / canon / port packages — 10 files

session-013 close (30fb889..4e92dcf, full + thin), canon-001 (dc8c2d0..0b5cb2f — PROTOCOL v1.6.0 §10 Delivery Medium made permanent), port-001 (+delta1 post-dc8c2d0).

```
├── gwm-canon-001-SHA256SUMS
├── gwm-canon-001-dc8c2d0-0b5cb2f.bundle
├── gwm-canon-001-delivery.sh
├── gwm-port-001-SHA256SUMS
├── gwm-port-001-delivery.sh
├── gwm-port001-delta1-post-dc8c2d0.bundle
├── gwm-session-013-close-30fb889-4e92dcf-thin.bundle
├── gwm-session-013-close-30fb889-4e92dcf.bundle
├── gwm-session-013-close-SHA256SUMS
├── gwm-session-013-close-delivery.sh
```

### 1.4 CDP task-47 kit — 3 files

coordinated-disclosure-public leg: e96624d..6facbf1 bundle + b64 twin + SUMS (Task-47/53-era; the CDP A3 anchor 6facbf17 re-verified at Task 61).

```
├── cdp-task47-SHA256SUMS
├── cdp-task47-e96624d-6facbf1.bundle
├── cdp-task47-e96624d-6facbf1.bundle.b64
```

### 1.5 MEDA special deliveries — 4 files

Out-of-band MEDA-repo deliveries outside the task-kit series: a3-repin bundle (9fc7530), truth-restore (c0e08c4) bundle + b64, meda.b64.

```
├── meda-a3repin-9fc7530.bundle
├── meda-truthrestore-c0e08c4.b64
├── meda-truthrestore-c0e08c4.bundle
├── meda.b64
```

### 1.6 Paper-2 collateral documents — 29 files

Transmittals, receipts, integration ledgers, boundary registrations, section drafts, assembled drafts (draft-3, draft-3.1), bib v1/v2, LaTeX v1/v2 + built PDFs, deposit tarball, metadata lock, deposit-prep plan, adjudications, industry feed, build log — the manuscript's document trail, dual-channeled with write-ups/.

```
├── emitter-build-log-v1.6.1.txt
├── paper-2-arxiv-deposit-v1.tar.gz
├── paper-2-v1.7-argon-collab1-integration-v1.md
├── paper-2-v1.7-argon-collab1-receipt-v1.md
├── paper-2-v1.7-argon-finalgate-integration-v1.md
├── paper-2-v1.7-argon-finalgate-receipt-v1.md
├── paper-2-v1.7-argon-round2-transmittal-v1.md
├── paper-2-v1.7-argon-round6-transmittal-v1.md
├── paper-2-v1.7-arxiv-deposit-prep-plan-v1.md
├── paper-2-v1.7-arxiv-metadata-lock-v1.md
├── paper-2-v1.7-boundary-registrations-task70-v1.md
├── paper-2-v1.7-boundary-registrations-task71-v1.md
├── paper-2-v1.7-boundary-registrations-task72-v1.md
├── paper-2-v1.7-boundary-registrations-task73-v1.md
├── paper-2-v1.7-draft3-1-assembled-v1.md
├── paper-2-v1.7-draft3-1-bib-v1.bib
├── paper-2-v1.7-draft3-1-bib-v2.bib
├── paper-2-v1.7-draft3-1-deposit-v1.pdf
├── paper-2-v1.7-draft3-1-latex-v1.pdf
├── paper-2-v1.7-draft3-1-latex-v1.tex
├── paper-2-v1.7-draft3-1-latex-v2.tex
├── paper-2-v1.7-draft3-assembled-v1.md
├── paper-2-v1.7-draft3-assembly-ledger-v1.md
├── paper-2-v1.7-notebooklm-addendum-adjudication-v1.md
├── paper-2-v1.7-task71-conversion-ledger-v1.md
├── paper-2-v1.7-task72-bib-verification-ledger-v1.md
├── paper-2-v1.7-task73-phase4-build-ledger-v1.md
├── reply-to-argon-postbuild-transmittal-v1.md
├── round5.7-argon-receipt-v1.md
```

### 1.7 ARGON round collateral — 4 files

ARGON engagement documents outside the paper-2-v1.7 prefix: battery-1 brief, round-6 staged interrogation + kit SUMS, submission package v1.6.1, b1 SUMS.

```
├── argon-b1-SHA256SUMS
├── argon-round6-kit-SHA256SUMS
├── argon-round6-staged-interrogation-v1.md
├── argon-submission-package-v1.6.1.md
```

### 1.8 RT/1.0 boundary records — 5 files

Response-Template v1.0 boundary records, one per trace (Tasks 48-53 window).

```
├── rt-1.0-boundary-record-1a16202746d76175.md
├── rt-1.0-boundary-record-1a1625f9a9ab9a51.md
├── rt-1.0-boundary-record-1a162c1617629eb5.md
├── rt-1.0-boundary-record-1a165d9394477881.md
├── rt-1.0-boundary-record-1a1664c3cccb84d5.md
```

### 1.9 Substrate canon copies — 11 files

Canonical substrate documents delivered as copies for operator-side reference: PROTOCOL.md, WITNESS-CORE.md, port package docs, bootstrap scripts (v1 + corrected), MANIFEST/SHA256SUMS registers, ledger append (Tasks 57-60), tracker closure.

```
├── MANIFEST.sha256
├── PORT-001-BUNDLE.md
├── PROTOCOL.md
├── README-STAGING.md
├── SHA256SUMS
├── WITNESS-CORE.md
├── WITNESS-PORT-PACKAGE.md
├── decisions-ledger-append-task57-60.md
├── gwm-bootstrap-v1.sh
├── gwm-bootstrap.sh
├── tracker-dark-closure-v1.md
```

## 2. `gwm-outbox` — operator-held source & reference material (9 files)

Material the operator placed for witness ingestion (podcast relays, external
assessments, theory inputs, reference papers). Direction semantics per the
2026-10-29 transmission; admissibility classes per findings/J-1.0 and the
Task-72 past-self ruling.

```
├── 4NDR0MEDAv1.2_infographic.png
├── 4NDR0MEDAv1.2_mindmap.png
├── GUP Mitigation Assessment - [chatgpt.com].pdf
├── Podcast_cosmic_war.md
├── Podcast_quantum_consciousness_theory.md
├── arxiv-2610.26825-memt-1.0.pdf
├── arxiv-2610.26825-memt-1.0.txt
├── paper-2-v1.7-memt10-industry-feed-v1.md
├── past-self_existence_theory.md
```

Per-file notes:

- `4NDR0MEDAv1.2_infographic.png` — v1.2-era infographic (visual asset, operator-held)
- `4NDR0MEDAv1.2_mindmap.png` — v1.2-era mind map (visual asset, operator-held)
- `GUP Mitigation Assessment - [chatgpt.com].pdf` — external ChatGPT assessment PDF (operator-collected reference)
- `Podcast_cosmic_war.md` — podcast transcript relay (operator→witness reference)
- `Podcast_quantum_consciousness_theory.md` — podcast transcript relay (pinned references/ dual-channel)
- `arxiv-2610.26825-memt-1.0.pdf` — MemT-1.0 paper PDF (ingested + pinned Task 64; dual-channel with references/)
- `arxiv-2610.26825-memt-1.0.txt` — MemT-1.0 transcript (55fb8eaa…, 283,926 B, pinned Task 64)
- `paper-2-v1.7-memt10-industry-feed-v1.md` — MemT-1.0 industry feed (dual-channel with write-ups/)
- `past-self_existence_theory.md` — operator-authored theory input (class ruled Task 72: channel-class evidence, never content-class)

## 3. White-paper tree — 58 files

### LaTeX skeleton (white paper build) — 15 files

The 4NDR0MEDA white-paper LaTeX build: main + 10 sections + appendix + D8-emitted verification data + two figures.

```
├── 01-intro.tex
├── 02-lineage.tex
├── 03-blanks.tex
├── 04-architecture.tex
├── 05-manifest.tex
├── 06-interface.tex
├── 07-related.tex
├── 08-casestudy.tex
├── 09-limitations.tex
├── 10-conclusion.tex
├── appendix.tex
├── fig1-memory-stack.png
├── fig2-positioning-matrix.png
├── main.tex
├── verification-data.tex
```

### Paper PDF lineage — 8 files

Built PDFs across the review gauntlet: paper-1 line, paper-2 v1.2 → v1.5-repro (2f9d204e…), the v1.6.1 anon review copy (NOT for deposit), the v1.7 ARGON relay build.

```
├── paper-1.2.pdf
├── paper-1.pdf
├── paper-2-v1.2.pdf
├── paper-2-v1.3.pdf
├── paper-2-v1.4.pdf
├── paper-2-v1.5-repro.pdf
├── paper-2-v1.6.1-REVIEW-COPY-anon-NOT-FOR-DEPOSIT.pdf
├── paper-2-v1.7-ARGON.pdf
```

### v1.6.1 source line — 2 files

v1.6.1 certified source tarball (99913db3…) + changes file (778f9ac2…).

```
├── paper-2-v1.6-to-v1.6.1.changes
├── paper-2-v1.6.1-source.tar.gz
```

### Paper-2 v1.7 section series — 15 files

The v1.7 rewrite: §1 r1 (first external read, ever) + §2–§8 r2 — the historical-deposit sources of the Task-67 draft-3 assembly (dual-channel with download/).

```
├── paper-2-v1.7-section-01-introduction-r1.md
├── paper-2-v1.7-section-02-negative-results-r1.md
├── paper-2-v1.7-section-02-negative-results-r2.md
├── paper-2-v1.7-section-03-architecture-r1.md
├── paper-2-v1.7-section-03-architecture-r2.md
├── paper-2-v1.7-section-04-working-tensor-integration-r1.md
├── paper-2-v1.7-section-04-working-tensor-integration-r2.md
├── paper-2-v1.7-section-05-verification-r1.md
├── paper-2-v1.7-section-05-verification-r2.md
├── paper-2-v1.7-section-06-case-study-pre-bootstrap-window-r1.md
├── paper-2-v1.7-section-06-case-study-pre-bootstrap-window-r2.md
├── paper-2-v1.7-section-07-evaluation-r1.md
├── paper-2-v1.7-section-07-evaluation-r2.md
├── paper-2-v1.7-section-08-related-work-r1.md
├── paper-2-v1.7-section-08-related-work-r2.md
```

### ARGON round collateral — 7 files

ARGON engagement set: corrected relay brief, round-5.7 verdict, init, round-2 transmittal, battery-1 brief (superseded non-operative, Task 57), collab-1 integration + receipt (dual-channel with write-ups/).

```
├── ARGON_round5.7.md
├── argon-relay-corrected-brief-v2-custody-and-mandate.md
├── paper-2-v1.7-argon-collab1-integration-v1.md
├── paper-2-v1.7-argon-collab1-receipt-v1.md
├── paper-2-v1.7-argon-init-v1.md
├── paper-2-v1.7-argon-round2-transmittal-v1.md
├── paper-2-v1.7-battery1-argon-brief-v1.md
```

### Round counters — 4 files

Round-5.2 counters (def5d3b1…, in-band class) + round-5.4 counters (8c3f0497…) with sha256 sidecars.

```
├── round5.2-counters-v1.md
├── round5.2-counters-v1.md.sha256
├── round5.4-counters-v1.md
├── round5.4-counters-v1.md.sha256
```

### Briefs & metadata — 3 files

arXiv metadata (v0.7, 0ef99398…) + tier-2 and tier-3 (ARGON) attack briefs.

```
├── paper-2-arxiv-metadata.md
├── paper-2-tier2-brief.md
├── paper-2-tier3-brief.md
```

### Reference & tooling — 4 files

refs-2.bib (798d1dd4…, the v1.6.1-baseline successor relayed Task 73), PTE E5 demo benchmark, the 4NDR0MEDA articulation, the MemT-1.0 industry feed.

```
├── 4NDR0MEDA-articulation_v1.0.md
├── paper-2-v1.7-memt10-industry-feed-v1.md
├── pte-e5-executable-demo-benchmark.py
├── refs-2.bib
```

## 4. Task → emission map

Task numbers are global and monotonic (ledger is the authority). Bundle names
carry the certified `<base7>-<head7>` range; dispositions live in the
artifact-index matrix and the decisions ledger.

| Task / window | Emission set (files as named in $INBOX) | Disposition |
|---|---|---|
| 37 | `gwm-task37-cdebae2-a00150a.bundle` | round-trip closed (matrix row 37) |
| 41-46 | `gwm-task4[1-6]-*.bundle` + `.b64` twins | round-trips closed (matrix rows 41-46) |
| 47 (CDP leg) | `cdp-task47-e96624d-6facbf1.bundle` + `.b64` + SUMS | closed at Task 53 (stage-2) |
| 50-53 | `gwm-task5[0-3]-*` trios + `.patch` + SUMS; task52 `gwmtask52-stage{1,2}.sh` | closed (Task-53 STAGE2-CLOSED) |
| 56 | `gwm-task56-82afd64-4bc2cfb` trio + patch + SUMS | closed (matrix row 56) |
| session-013 window | `gwm-session-013-close-30fb889-4e92dcf` (+ `-thin`) kit; `gwm-paper2-v17-s2-0b5cb2f-742ec92`, `gwm-paper2-v17-s03-4e92dcf-14ad0f6`, `gwm-paper2-v17-draft1-14ad0f6-98252f9`, `gwm-paper2-v17-draft1b-c23b413-93aa17d` kits | v1.7 initiation + section rounds (pre-Task-57; unnumbered section rounds) |
| canon-001 / port-001 | `gwm-canon-001-dc8c2d0-0b5cb2f` kit; `gwm-port-001-delivery.sh` + `gwm-port001-delta1-post-dc8c2d0.bundle` + SUMS | PORT-001 CLOSED (receipt applied @ dc8c2d0) |
| 57 | `gwm-paper2-v17-argoninit-93aa17d-bea7303` kit | DONE — ARGON re-type; init emitted bea7303 |
| 58 | `gwm-paper2-v17-collab1-bea7303-1babae3` kit | DONE — APPLIED @ 1babae3, operator hands |
| 59 | in-boundary rulings (no standalone kit) | riders landed at Task-67 assembly |
| 60 | `gwm-task60-1babae3-e41618f` kit (+ `.b64`) | DONE — boards catch-up 57-60 |
| 61 | `gwm-task61-boards-23a9615-7a3bce5` + `gwm-task61-meda-c0e08c4-90a57cc` kits + `gwm-task61-meda-completion-90a57cc.sh`(+`.b64`) | DONE |
| 62 | `gwm-task62-gwm-7a3bce5-6e84cfd` + `gwm-task62-meda-90a57cc-897e957` kits | DONE (GWM leg re-cut at 63; 897e957 withdrawn) |
| 63 | `gwm-task63-gwm-7a3bce5-a5918fa` + `gwm-task63-meda-90a57cc-bbe4c00` kits | DONE |
| 64 | `gwm-task64-gwm-7a3bce5-eca714b` kit | DONE — round-trip closed by observation (D5 born) |
| 65 | `gwm-task65-gwm-34cebe7-2a5d7ba` kit | DONE — first zero-edit wrapper |
| 66 | `gwm-task66-gwm-26f0c4a-baf813e` kit | DONE — first-try FRESH zero-edit run |
| 67 | `gwm-task67-gwm-baf813e-32c803e` kit | DONE — draft-3 assembled |
| 68 | `gwm-paper2-v17-draft31-8d36a28-384dc27` kit | DONE — draft-3.1 cut (ARGON final gate) |
| 69 | `gwm-task69-384dc27-2f2dc43` kit | DONE |
| 70 | `gwm-task70-gwm-2f2dc43-4c17765` + `gwm-task70-meda-bbe4c00-8f7e21a` kits + `gwm-task70-meda-verify-push.sh` | DONE (MEDA leg HALT adjudicated at 71: already-applied) |
| 71 | `gwm-task71-gwm-4c17765-4e4e333` kit | DONE — already-applied branch's first production run |
| 72 | `gwm-task72-gwm-4e4e333-4062d7f` kit (+ `.b64`) | DONE — APPLIED @ 4062d7f, pushed, hash-matched |
| 73 | `gwm-task73-gwm-4062d7f-0897b8f` + `gwm-task73-meda-8f7e21a-2daac65` kits (apply-push) | DONE — APPLIED @ 0897b8f; MEDA 2daac65 companion |
| 74a | `gwm-task74a-license-0d44bca-872a597` kit (apply-push) | DONE — round-trip closed by observation (origin/main == 872a597 at Task-75 open) |
| 74 (umbrella, in-bound) | arxiv-anc / anchor-staging / release-assets / repo-surface-pin-snapshot / checklist / release-notes (task74-kit staging) | L2-surface + release-asset class, operator-optional (Task-74a commit note) |
| 75 | `gwm-task75-SUK.sh` (+ `gwm-task75-gwm-872a597-<head7>` trio fallback) | THIS ROUND — the emissions-index round; kit + battery pins printed at emission |

## 5. Provenance pins (source attachments, 2026-10-29)

| Attachment | sha256 | bytes | lines | parsed files |
|---|---|---|---|---|
| `INDEX_gwm-inbox.md` | `6f9fed74ba43c6a15ac86e592bbe5c4871d78dcdc4f6bd9179c593baa9d56583` | 9,789 | 222 | 219 |
| `INDEX_gwm-outbox.md` | `11fafd3cff95e16391f5bf0da4b3fe96fa3b6aede2d17b75e5ec6542a8aa544e` | 408 | 12 | 9 |
| `INDEX_gpt-documentation-white_paper-4NDR0MEDA.md` | `746e3a0f7a0c9d2b1f0ae579fc20717a2b3a8a99806a0d07f9c55ee33271b0cb` | 2,385 | 61 | 58 |

Operator-typed content per PROTOCOL §3; attachment-suffix noise ignored on
sight; counts machine-asserted against the footers at generation time
(generator: `scripts/task75_build_index.py`, deterministic).

## 6. Maintenance contract

1. **Same-commit rule**: an emission that is not indexed in this file in the
   same commit is a defective emission (the round's kit pins this file at G4;
   the ledger entry names the round's emissions).
2. **Append-only**: rows are appended, never rewritten; corrections append
   with their own provenance (log-don't-rewrite discipline).
3. **Reconciliation loop**: the operator's next INDEX snapshot diffs against
   this file; any drift (new operator-side file without a row, or row without
   a file) is a registered defect, fail-visible.
4. **No-self-reference**: kit/bundle/battery pins of the round that carries an
   index update are printed at emission (round-record page + boundary
   transmission + SHA256SUMS), never inside the committed file itself
   (Task-51 precedent); the round-trip receipt appends at the next boundary
   open.
5. **Session archives**: `sessions/MANIFEST.sha256` governs transcripts; this
   file governs emissions; `worklog.md` (root, born Task 75) governs boundary
   bootstraps and round records.
