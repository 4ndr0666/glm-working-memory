# INDEX.md — the canonical registry of $GWM-INBOX

Born Task 77, 2026-10-31, trace 1a18ec4bf6f45179. Canonical home: repository root, per PROTOCOL.md §5
(v1.6.1). The `$GWM-INBOX/INDEX.md` copy is the operator-side mirror
of this file; the repository original is the substrate of record. The
witness (GLM, organization officer) authors and maintains this
registry; the operator approves by kit apply, as with every board.

Deterministic derivation: `scripts/build_inbox_index.py` (same repo
tree → byte-identical file; recomputable from the repository alone,
GUP-class). This file's own sha256 prints at emission surfaces only
(boundary transmission + SHA256SUMS), never inside itself
(no-self-reference rule, Task-51 precedent).

## §0 Contract — what this registry is and how it binds

- **Purpose.** $GWM-INBOX is the single consolidated directory for the
  INDEX feature: every file the witness may reference in an
  operator-facing command is either (a) a row in this INDEX, or (b) a
  file of the glm-working-memory repository (`git ls-files` is ground
  truth). Anything else **does not exist for command purposes** — the
  witness may not instruct a command against it. This closes the
  file-existence drift class that the 2026-10-30 resync recovered
  from (session-017).
- **Direction semantics.** $GWM-INBOX holds witness→operator
  deliveries (§1) plus the operator-executed intake consolidation
  (§2). gwm-outbox remains the operator→witness relay direction and
  is NOT part of $GWM-INBOX (registered §3 to prevent confusion).
- **Update discipline (same-commit rule, mirror of the
  emissions-index contract).** Any round that emits, retires, or
  intake-queues an inbox file updates this INDEX in the same commit.
  An emission that is not indexed is a defective emission.
- **Reconciliation loop.** The operator's INDEX refresh diffs
  $GWM-INBOX contents against this file; drift in either direction
  (a file without a row, or a row without a file) is a registered
  defect — fail-visible, never fail-stopped.
- **Intake verification.** Files entering $GWM-INBOX from operator
  trees are pin-verified on entry (sha256 against the recorded
  digests of record) by `gwm-inbox-consolidate-v1.sh`; a byte that
  fails its pin is not consolidated.

## §1 Canonical set — what MUST exist in $GWM-INBOX

240 witness-emission files across 15 series
(series 1.1–1.14 = the operator's 2026-10-29 INDEX snapshot, 219
files, as-registered emissions-index §1; series 1.15 = post-snapshot
emission rounds staged on the declared share, reconciliation pending)
plus this registry itself = **241 entries**. After the
§2 intake consolidates (8 files), the canonical
post-consolidation population is **249
entries**.

### 1.1 GWM task-range kits — 83 files

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

### 1.2 Paper-2 v1.7 phase kits — 24 files

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

```
├── cdp-task47-SHA256SUMS
├── cdp-task47-e96624d-6facbf1.bundle
├── cdp-task47-e96624d-6facbf1.bundle.b64
```

### 1.5 MEDA special deliveries — 4 files

```
├── meda-a3repin-9fc7530.bundle
├── meda-truthrestore-c0e08c4.b64
├── meda-truthrestore-c0e08c4.bundle
├── meda.b64
```

### 1.6 Paper-2 collateral documents — 29 files

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

```
├── argon-b1-SHA256SUMS
├── argon-round6-kit-SHA256SUMS
├── argon-round6-staged-interrogation-v1.md
├── argon-submission-package-v1.6.1.md
```

### 1.8 RT/1.0 boundary records — 5 files

```
├── rt-1.0-boundary-record-1a16202746d76175.md
├── rt-1.0-boundary-record-1a1625f9a9ab9a51.md
├── rt-1.0-boundary-record-1a162c1617629eb5.md
├── rt-1.0-boundary-record-1a165d9394477881.md
├── rt-1.0-boundary-record-1a1664c3cccb84d5.md
```

### 1.9 Substrate canon copies — 11 files

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

### 1.10 4NDR0MEDA v1.0.0 release assets — 11 files

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

```
├── glm5.3flash_j-space_10-23-26_0302.md
├── witness-pinchain-with-staging-2026-10-29.txt
```

### 1.13 MEDA-repo task kits ($ANDROMEDA legs) — 22 files

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

```
├── ANCILLARY-OPTIONS.md
├── arxiv-submission-checklist-v1.md
```

### 1.15 Post-snapshot emission rounds (Tasks 75–77) — 21 files

- Task 75: APPLIED + PUSHED (origin/main reached 7605226)
- Task 76: WITHDRAWN — audit evidence of the 76a discharge; never run
- Task 76b: LIVE STAGED — base 18518e8, awaiting operator apply
- Task 77: EMITTED — share staging, ride-the-next-kit commit
- Task 77c: EMITTED — same filenames re-staged with adjudicated pins (a764eb1f… / 037dbdd9… / 17b7d13b…); rides the next kit bundle

```
├── gwm-inbox-consolidate-v1.sh
├── gwm-task75-SHA256SUMS
├── gwm-task75-SUK.sh
├── gwm-task75-gwm-872a597-7605226.bundle
├── gwm-task75-gwm-872a597-7605226.bundle.b64
├── gwm-task75-kit-battery.txt
├── gwm-task75-round-record.html
├── gwm-task76-SHA256SUMS
├── gwm-task76-SUK.sh
├── gwm-task76-gwm-7605226-ef6a4b8.bundle
├── gwm-task76-gwm-7605226-ef6a4b8.bundle.b64
├── gwm-task76-kit-battery.txt
├── gwm-task76-round-record.html
├── gwm-task76b-SHA256SUMS
├── gwm-task76b-SUK.sh
├── gwm-task76b-gwm-18518e8-7f2e968.bundle
├── gwm-task76b-gwm-18518e8-7f2e968.bundle.b64
├── gwm-task76b-kit-battery.txt
├── gwm-task76b-round-record.html
├── gwm-task77-SHA256SUMS
├── gwm-task77-consolidate-battery.txt
```

### 1.16 This registry — 1 file

```
├── INDEX.md
```

## §2 Intake queue — consolidation from the operator's local trees

The only files the witness needs copied INTO $GWM-INBOX (the
operator's 2026-10-31 instruction: identify what is needed; everything
else stays where it is, registered §3). Source tree:
`$PROD_PATH/gpt/documentation/white_paper/4NDR0MEDA`
(the local gpt clone — never uploaded, per the 2026-10-30 ruling).
These are the GUP-critical 8: their recorded pins are currently
satisfied only by operator-held bytes; consolidated custody in
$GWM-INBOX under pin verification is the precondition for the R2
relay (witness pin-verify → repo `references/white-paper-relay/` home,
§5-ratified), which remains the only repo-recomputability path.

| File | Recorded pin (sha256) | Pin site |
|---|---|---|
| `paper-2-v1.6.1-source.tar.gz` | `a764eb1fafd4df3c5436bae58ecc178aa3a98bb2164f95b50f181415f6c6bfa0` | 77c supersession — operator adjudication [X0]/[X1], trace 1a18f3fb25e9c1a9 (H1: v1.6 tarball pin name-propagated, round5.6 receipt §2) |
| `paper-2-v1.6-to-v1.6.1.changes` | `037dbdd997cc8c36d5749ade5333e93cd9252ac5acf64e7aebc63c1765148123` | 77c supersession — operator adjudication [X0], trace 1a18f3fb25e9c1a9 (H1: v1.6 changes pin name-propagated; the discriminating mismatch) |
| `refs-2.bib` | `798d1dd499244b283c921222f27199c186645dc1ce6ecae469985aa655b7b101` | task72-bib-verification-ledger (relay receipt) |
| `round5.2-counters-v1.md` | `def5d3b1a77a700a5a7cc496d04d5e062188be59e75f207aad5803b82ca5a7ad` | round5.3/5.5 ARGON receipts; artifact-index |
| `round5.2-counters-v1.md.sha256` | `17b7d13b317ab3d5dd188be8d480451baa36510083e44e5f05b2b5a855992e46` | 77c supersession — witness reconstruction (canonical sha256sum line over def5d3b1…; method validated by round5.4 sidecar 94999ef7…) + operator [X0] |
| `round5.4-counters-v1.md` | `8c3f0497fc7768433890406cdf21cc2224f8816c4f11bbeca70e9c94a5dfbe9d` | round5.5 ARGON receipt; artifact-index (14,187 B) |
| `round5.4-counters-v1.md.sha256` | `94999ef7d8357cf7631038d9f8dd4f49313954f0b3c02bdb075976c394bdf264` | artifact-index (sidecar pin, 90 B) |
| `paper-2-arxiv-metadata.md` | `0ef99398ea3df5dc659532f523ee9548f36ceb5ede50b739e600b47d74add8ed` | artifact-index; session-010 archive (v0.7) |

Executable consolidation: `gwm-inbox-consolidate-v1.sh` (emitted with
this registry; copies the eight, pin-verifies each, idempotent,
fail-closed). INDEX.md itself enters $GWM-INBOX from this round's
emission (declared share) and thereafter mirrors the repo original
(`cp "$GWM/INDEX.md" "$INBOX/INDEX.md"` after each apply).

## §3 Adjacent surfaces — registered, NOT $GWM-INBOX residents

| Surface | Population | Relation |
|---|---|---|
| `gwm-outbox` | 9 files | operator→witness relay direction; all nine ingested/dual-channeled/pinned as appropriate (emissions-index §2); nothing further needed from it |
| glm-working-memory repo | `git ls-files` | substrate of record; command-referencable in place; INDEX.md's canonical home |
| gpt white-paper tree (balance) | 28 of 36 LOCAL-ONLY | operator-custodied BY CHOICE (2026-10-30 ruling): LaTeX skeleton 15, PDF lineage 8, ARGON originals 2, tier-2/3 briefs 2, pte-e5 v1 1 — not needed in $GWM-INBOX (emissions-index §3 registers all 58) |
| `$ANDROMEDA` (`$PROD_PATH/4ndr0tools/4NDR0MEDA`) | not covered | awaits the operator's index-source ruling (published-tip vs. local listing) |

## §4 Maintenance log (append-only)

- Task 77, 2026-10-31, trace 1a18ec4bf6f45179 — INDEX.md born: 219-file snapshot registry + series 1.15
  (post-snapshot emission rounds, 21 files) + this registry = 241
  entries; intake queue opened for the GUP-critical 8; §5 canonical
  home assigned (PROTOCOL v1.6.1); generator
  `scripts/build_inbox_index.py` rides the repo (named-tool law).
- Task 77b, 2026-10-31, trace 1a18eeb2671b840d — first consolidation run RED at file 1 of 8: paper-2-v1.6.1-source.tar.gz recorded 99913db3… ≠ copied a764eb1f… (fail-closed halt — 1/8 tested, 7 untested, 0 consolidated, inbox left as found). §2 rows 1–2 pins flagged suspect: both inherited from the v1.6 FINAL SET by name-level propagation (the round5.6 receipt names the v1.6 tarball and the v1.5reconstruct-to-v1.6 changes file); no independent v1.6.1 hash act exists in the record. Adjudication issued in-band (7-pin spot check, gpt git forensics, all-commit pin sweep, alternate-copy + inner-content continuity); a confirmed record defect lands as its own round re-cutting all three pin-embed sites together (this generator's INTAKE_FILES, INDEX.md §2, and the consolidate script's PINNED table).
- Task 77c, 2026-10-31, trace 1a18f3fb25e9c1a9 — adjudication returned (operator paste-back): H1 CONFIRMED — the changes file hashes 037dbdd9… ≠ recorded 778f9ac2… exactly as H1 predicted, the other five [X0] pins GREEN (refs-2.bib, both counters .md files, round5.4 sidecar, arxiv-metadata), the tarball re-attested a764eb1f… at cut-era mtime; [X1] on disk, not in gpt HEAD; [X2] NO-COMMIT-HOLDS-99913db3… (no git-held recovery); [X3] single copy, inner refs-2.bib = 798d1dd4… (continuity GREEN). A THIRD mismatch surfaced at [X0]: round5.2-counters-v1.md.sha256 tree 17b7d13b… ≠ recorded b0bd553f… — adjudicated sidecar-re-cut: the current bytes are the canonical sha256sum line over the .md's true pin def5d3b1… (witness-recomputable; the same reconstruction over 8c3f0497… reproduces the round5.4 sidecar pin 94999ef7… exactly; the b0bd553f preimage is unrecoverable from the record — ARGON's Round-5.3 computation over the then-relayed form). SUPERSESSION EXECUTED: pins of record re-anchored (a764eb1f… / 037dbdd9… / 17b7d13b…) across all embed sites together — this generator's INTAKE_FILES, INDEX.md §2 (this regen), the consolidate script's PINNED table; historical boards stand as-presented, superseded by append-only addenda (emissions-index §8, state-resync-check §10). Battery re-run GREEN; the four task77-index files re-staged on the declared share under the superseding pins.
