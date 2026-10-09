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

## [2026-10-08] — Session 003 (digest-history convention adopted)
- DECISION: Documents cannot embed their own digest (self-reference defect —
  the exporter-v1.1.1 lesson, re-derived in a document by the reviewing
  chat-surface instance's directive and caught by the agent instance before
  execution). Convention adopted: frozen versions carry their full digests
  in successor §9 blocks; current-version digests are stated in-channel
  only; repo pin at commit supersedes all.
- RATIONALE: Embedding would change the file's bytes and invalidate the
  digest, forging the corruption signature the provenance chain exists to
  detect. First instance of a cross-domain lesson transfer catching a
  reviewer error (chat-surface reviewer directive corrected by agent-side
  instance using the exporter failure history).
- ALTERNATIVES REJECTED: (a) Embedding the digest anyway and treating the
  mismatch as expected — poisons every future audit of the document.
  (b) Leaving the placeholder unfilled — an unfilled provenance field is
  its own integrity gap in a deliverable about provenance.

## [2026-10-08] — Session 003 (vendor-address gate resolved; E6 added)
- DECISION: Vendor-address gate closed as 'confirmed absent — documented fallback' after 7-domain probe (2 methods, outputs held; zhipuai.cn answered 302; redirect-follow probe returned empty — resolved negative on all seven domains). F-001 gains E6 (security.txt absence) and §6.3 receipt sentence. Notification routes via general support, absence documented in-letter. Session-numbering collision (per-surface NNN counters) logged as v1.5 candidate — propose surface-prefixed or monotonic IDs.
- RATIONALE: A frontier-AI vendor with no discoverable designated vulnerability-intake is itself a transparency datapoint — it strengthens §6.3's disclosure-asymmetry thesis with a receipt, and materially shapes the taxonomy paper's platform-governance section.
- ALTERNATIVES REJECTED: (a) Blocking the send pending a security.txt that may not exist — the gate's purpose (no guessed addresses) is satisfied by documented fallback. (b) Omitting the absence from the letter — the in-letter note does quiet routing work and is honest.

## [2026-10-08] — Session 003 (VM→operator handoff manifest convention adopted)
- DECISION: Every agent-side package shared for download includes a MANIFEST.sha256 covering its contents, generated at packaging time. The operator runs `sha256sum -c MANIFEST.sha256` after unpack and before review; a mismatch is a transit/package defect — no review, no push, report in-channel. After operator push, the next boot verifies against the official repo per §7 step 1 — the chain closes on both ends. The manifest excludes itself (same non-self-reference rule as sessions/MANIFEST.sha256's glob).
- RATIONALE: Two verified instances of in-transit content mutation are on record (F-001 server-side appension; exporter v1.1.0–v1.1.2 boundary defects). The VM→operator handoff was the last unprotected seam in the provenance chain; it now carries the same protection as every other link. Inaugural application: the session-003 close package.
- ALTERNATIVES REJECTED: (a) Trusting the delivery layer because prior handoffs held — the project's own findings say transit seams mutate; "hasn't failed yet" is not a control. (b) Covering only final deliverables (write-ups) rather than the whole package — a mutated draft that gets pushed becomes a mutated canonical artifact; the manifest covers everything shared.

## [2026-10-08] — Session 003 (repo hardening: EOL transformation disabled on hash-pinned paths) [entry owed by commit bf78e1b]
- DECISION: `.gitattributes` added marking `sessions/*.md` and `write-ups/*.md` as `-text`, disabling line-ending transformation on hash-pinned paths. Adopted from the v0.2 review's §4.1 finding (reader-side `core.autocrlf` on Windows checkouts converts LF→CRLF and breaks prefix-hash verification).
- RATIONALE: A verification convention that silently fails on a standard client configuration is not a convention — it's a trap for exactly the careful reader who runs the check. The fix is repo-side (one file, both parties' clones covered) rather than a caveat in every document. Scope note: `evidence/` binaries are auto-detected by git and not EOL-transformed; no attribute needed.
- ALTERNATIVES REJECTED: (a) Documenting the autocrlf hazard in each write-up and leaving the repo permissive — shifts the burden to every future reader forever. (b) `eol=lf` instead of `-text` — `-text` is the stronger disable (no smudge/clean at all) and sufficient for hash fidelity.
