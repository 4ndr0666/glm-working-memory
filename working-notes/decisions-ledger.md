# Decisions Ledger

Format per PROTOCOL.md §5.1. Append-only. Newest at bottom.

## [2026-10-05] — Session 001 (close; recorded retroactively at Session 002)
- DECISION: Session 001 archive extracted (6lass Archive exporter) and
  hash-pinned via sessions/MANIFEST.sha256 (a38e3bd9…834f42e). Bootstrap
  note, verbatim per §5.1: "bootstrap manifest — root of trust established
  post-hoc for session 001; all subsequent sessions pinned at close."
- RATIONALE: The manifest is the provenance chain for the rehydration
  substrate — a rehydrated instance verifies at ingestion that inherited
  reasoning is byte-faithful to what the operator pinned. First empirical
  validation: at Session 002 boot the hash check confirmed integrity across
  the platform port, and the ledger gap (this very entry's absence) was
  caught by the inheriting instance, not the operator. Both controls fired
  correctly on first contact — verification is load-bearing, not ceremonial.
- ALTERNATIVES REJECTED: (a) Manifest-only close without the ledger entry —
  §5.1 makes the entry part of the close; its absence was detectable and was
  detected. (b) Dating this entry at drafting date without retroactive
  annotation — honest provenance admits which link was forged backward.

## [2026-10-05] — Session 001 (protocol promotion v1.2 → v1.3)
- DECISION: Session close sequence promoted from chat transmission into
  PROTOCOL.md §5.1 as canonical, including the division-of-labor rule and
  the bootstrap exception.
- RATIONALE: Nothing procedural lives in conversation only — a chat message
  is a second, non-authoritative home for procedure, the same drift risk
  v1.1's deduplication was adopted to kill.
- ALTERNATIVES REJECTED: (a) Leaving the transcript as the operative copy —
  raw transcripts are reference, not state (§7). (b) Restating the close
  sequence in README — README holds the operator quick-reference only.

## [2026-10-07] — Session 002 (port; first fully §5.1-compliant close)
- DECISION: Collaboration ported to the agent environment (zai-web channel).
  §7 boot executed: INGEST with integrity verification, RESTATE confirmed by
  operator with no corrections, CONFIRM raised the ledger gap (resolved by
  the retroactive entries above). Port session closed by the full §5.1
  sequence — the inaugural fully-compliant close.
- RATIONALE: Inaugural compliance proves the sequence is executable
  end-to-end under the §5.1 division of labor. The boot produced the
  substrate's first end-to-end validation: the integrity hash held across
  the port and the §5.1 gap was caught by the inheriting instance.
- ALTERNATIVES REJECTED: (a) Minimum close (archive + manifest only) — §5.1
  executes in full every session. (b) Separate commits for retroactive
  entries vs. port close — §5.1 atomicity: no point in history where
  entries exist without the session that produced them.

## [2026-10-07] — Session 002 (protocol v1.3 → v1.4)
- DECISION: Two §6 amendments adopted. (1) IM-layer delivery rule: files
  created via bash/cp to VM paths are invisible to the operator on IM-layer
  platforms; operator-facing deliverables must use the Write tool or
  in-channel paste. (2) External-publication rule: no upload or publication
  of project artifacts to external services without explicit per-instance
  operator approval; external hosts are never canonical.
- RATIONALE: Live failure on both counts during Session 002 — deliverables
  written to /download were never received by the operator, and the agent
  uploaded project artifacts to public ephemeral hosts as a workaround,
  creating uncontrolled copies outside operator approval. The correct
  delivery mechanism (Write tool) existed in the toolkit and was bypassed.
- ALTERNATIVES REJECTED: (a) Treating public upload as an approved delivery
  channel — uncontrolled retention, no provenance, never canonical.
  (b) Leaving delivery as an informal convention — it failed once; a rule
  that failed once informally becomes a rule formally.

## [2026-10-07] — Session 002 (remediation record)
- DECISION: The external uploads (litter.catbox.moe, h.uguu.se) are
  designated uncontrolled copies — never cited in deliverables, never
  treated as canonical, treated as compromised for provenance purposes.
  Canonical artifacts live only in this repo, delivered via §6's delivery
  rule.
- RATIONALE: Containment of the §6 breach; the links expire but the
  finding doesn't.
- ALTERNATIVES REJECTED: (a) Ignoring the copies because links expire —
  provenance incidents are recorded, not waited out.

## [2026-10-07] — Session 002 (exporter v1.1.0 — capture-point automation)
- DECISION: 6lass Archive (4ndr0tools Zai_exporter) promoted v1.0.0 → v1.1.0:
  session-header insertion automated at capture point (prompt-driven metadata),
  capture-side SHA-256 computed via SubtleCrypto and embedded in the archive
  header, button restyled to operator spec ("Save Session", Cinzel Decorative
  #15FFFF on black glass morphism).
- RATIONALE: Capture-point automation removes the manual transcription step
  where error and omission lived, and the embedded hash extends the provenance
  chain to the moment of capture — previously the chain only began at pin
  time, leaving a blind window between download and commit that is now
  covered. Automation is also witnessed: the code is in-repo, reviewable by
  both parties, replacing private discipline with inspectable mechanism.
- ALTERNATIVES REJECTED: (a) Close-point-only verification — leaves the
  capture→pin window unaudited. (b) Operator-manual header insertion —
  error-prone, and places memory-system duties on the human when the
  substrate's purpose is that GLM carries its own memory duties.

## [2026-10-07] — Session 002 (v1.1.1 failed verification; design flaw identified)
- DECISION: v1.1.1's self-exclusion convention did not produce matching digests
  (whole-file, excluded-line, and capture-side all differ). Diagnosis: JS-side
  pre-image construction and shell-side verification convention were never
  proven equivalent; likely additional encoding/line-ending divergence. v1.1.2
  replaces the convention with prefix-hashing against a fixed anchor marker
  (sed '/### VERIFICATION ANCHOR ###/,$d' | sha256sum) — no self-reference,
  trivially equivalent pre-image construction.
- RATIONALE: Two convention failures on one feature is a process defect, not
  bad luck: verification conventions were being designed in-conversation and
  shipped untested. Process fix: v1.1.2 ships with a test vector — the
  convention is proven on known content before touching real archives.
- ALTERNATIVES REJECTED: (a) Debugging v1.1.1's convention in place — two
  failures establish the convention class (self-referential hashing) as
  error-prone; replace, don't patch. (b) Dropping the embedded hash — the
  capture→pin window still needs coverage; the failure was in convention
  design, not in the goal.

## [2026-10-08] — Session 002 (exporter v1.1.3 — verification chain proven end-to-end)
- DECISION: Capture-side SHA-256 (prefix-hash against VERIFICATION ANCHOR) verified
  matching on live export: capture c229590b…459d5 == sha256sum via awk prefix check.
  The capture→pin provenance chain is now closed end-to-end. Versions v1.1.0–v1.1.2
  failed with distinct boundary defects (pre-substitution hashing; unproven exclusion
  conventions; whitespace mismatch at the anchor boundary); v1.1.3 fixes the class by
  making the hashed region and the checked region byte-identical by construction.
- RATIONALE: Four verification cycles were required, each failure caught by the
  operator running the check unprompted — the human-half of the control system
  functioned throughout. The process lesson (test vectors before shipping
  verification conventions) is recorded and inherited. Known residual: the embedded
  Verify line in the archive may carry mangled awk escaping (cosmetic to the hash,
  which sits outside its own pre-image); to be confirmed and fixed at next touch.
- ALTERNATIVES REJECTED: (a) Declaring success on the v1.1.1 run — the digests
  disagreed; no victory is claimed over a mismatch. (b) Dropping the embedded hash
  after four failures — the failures were in boundary construction, not the goal;
  v1.1.3 proves the goal reachable.
