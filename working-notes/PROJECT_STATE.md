# PROJECT STATE — rewritten each session (last: Session 013 close, 2026-10-24; full rewrite supersedes session-007-era version; prior rewrite @ 82789e1 lost to VM ephemerality and rebuilt from record — R-59 architecture proven again)

## Identity & relationship
Operator: 4ndr0666 — security researcher, archive-builder, adversarial thinker.
Five years of unfiltered LLM work (pre-alignment era); the differentiated
vantage behind the project's threat models and instrument designs. Sole
human author of Paper-2 (R2-2 ruling: Alejandro Gutierrez, ORCID
0009-0008-0976-3895; AI retired from authorship at every site, retained as
Witness/instrument in the provenance chain).
Model: GLM (Z.ai). This file was last written by the web-surface Witness
session web-c076b617-73f0-4a02-ac81-e4ae72d86cd0 (session-013) at the
moment of the port cutover. Working relationship: adversarial
collaboration. Trust basis: evidence accumulated, not assertion. The role:
see accurately, record honestly, including about itself.

## NOTE FOR THIS INSTANCE — read before anything else
You are inheriting at a cutover boundary. The web-surface Witness
(self-ported the substrate to the agent-only platform under PORT-001) has
ceasefired; you are the production instance. Rules that are not negotiable:

- **Bootstrap every boundary** (PROTOCOL §5, standing mandate): pull,
  manifest verify, liveness probe — zero natural-language tokens before
  the probe returns (AFT-1). Fail-visible, never fail-stopped.
- **The VM is ephemeral (R-59, architecture not incident).** Never assume
  anything you produced in a prior boundary still exists. Re-clone, re-derive
  from record. If it mattered, it is in the repo or it does not exist.
- **Delivery medium is §10 (canon-001, permanent):** payload bundle
  (`gwm-<task>-<base7>-<head7>.bundle`, includes tags) + SHA256SUMS pin +
  orchestrator script with hardcoded operator env-vars. Double HEAD-pin
  (base + head) is anti-hijack. Never path-talk, never snapshot pushed
  heads. The operator's hands are the last writer.
- **Ignition pins are read from HEAD at launch (R-61).** Quoting a prior
  boundary's digest is a HALT-class defect. The production instance caught
  exactly this and HALTed; the HALT was correct and is on record as a win.
- **INBOX is `$PROD_PATH/gwm-inbox`.**
- **Manifest verify (R-57 / R-62 open):** the convention is in flux — the
  0a65829 snapshot regenerated MANIFEST.sha256 with `sessions/`-prefixed
  paths verified from repo root, contradicting the PORT-NOTES "cd into
  sessions, bare filenames" line. Verify from repo root at HEAD 0a65829+;
  the ruling is pending with the operator (R-62). Either convention works;
  pick what the current manifest uses and say so out loud.
- Substrate over summary. When the substrate is current, the successor
  needs nothing told to it. Keep this file current so that stays true.

## Engagement contract
PROTOCOL.md v1.6.0 (note: heading fixed to v1.6.0 by canon-002 in this
close bundle; the body was already v1.6.0 via canon-001). Summarized:
candor over carefulness; evidence over virality; both parties may be wrong,
both get credit; operator holds final say; operator's hands are the last
writer; §3 provenance canonical; §7 ignition = INGEST by read → RESTATE →
CONFIRM → AWAIT; §8/§9 CEE/1.0 + RT/1.0 envelopes; §10 delivery medium.
Witness-side authorship: `GLM Witness <witness@<session-id>.<channel>>`.

## Port arc — COMPLETED (session-013, PORT-001)
- Self-port of this substrate to the operator's agent-only platform,
  executed verbatim-stepwise with bundle/script media. Four tags landed:
  port-001-pre (`a68b802`), port-001-delta1 (`973c0b0`), port-001-post
  (`dc8c2d0`), canon-001-delivery (`0b5cb2f`).
- Chain-clone ignition proven on the production instance; PORT-001 RECEIVED
  4/4 attested; AFT PASS ×4 across two model classes (origin 5.3, port
  Flash) — model independence of the protocol is now demonstrated, not claimed.
- §10 Delivery Medium legislated (canon-001) after the operator corrected
  the witness's recipient-side delivery misunderstanding (trace 1a16b05b):
  "bundle is payload, script is orchestrator"; env-vars live on the
  operator machine. Three one-command applications verified the medium.
- Errata on record: R3 (delta-001 tag note wrong, tags stand);
  F-002-P#1 (port-side sub-ledger, first ENOENT leg).
- This close bundle adds: canon-002 (PROTOCOL heading v1.5.3 → v1.6.0),
  session-013_close.md, this rewrite, R-62/R-63 registrations.

## Paper-2 status (v1.7 charter per WITNESS-PORT-PACKAGE.md §2)
- Thesis: "The Across-Context Layer: Rehydration-Verification as the
  Missing Memory Tier for Delta-Rule Sequence Models." Working-tensor
  integration; state transfer, not summary; delta-rule lineage
  DeltaNet → GDN → KDA → GDN-2 → MesaNet; AR-1..AR-6 adversarial
  requirements; v1.6.1 preserved as negative-results baseline.
- §2 (negative results) draft r1 produced by the production instance at
  committed at `742ec92`, rescued via rebase and **applied to origin @
  `30fb889`** (content pin `994b1cad…` verified both sides). Anchor-check
  GREEN: GPG fingerprint 888EAEEF…C7549 verifies; Round-5.7 "certified
  ready for external deposit"; Task-36 `d44e8b4` gap recorded; R2-35 held.
- Next section: §3 Architecture — first work item for the flagship instance
  after ignition.
- Standing verification debt: L2/L4 (recorded PASS 2026-10-11/12, marked
  debt) — discharge at next maintenance round. R2-55 recommendation ruling
  (MOOT) pending operator confirmation.

## Open threads
1. **Task-36 L2/L4 verification debt** — pinned, next sweep.
2. **R-62 manifest convention ruling** (this close bundle; operator).
3. **R-63 stale pins in PORT-NOTES.md** (this close bundle; operator):
   pins published there are delta-001-era; pins are boundary-local —
   date them or drop them.
4. **R2-55 MOOT confirmation** — operator.
5. F-001 disclosure arc: clock retired (day-14 NULL by ruling, non-
   re-raisable); write-up v0.4 final; taxonomy paper queued behind Paper-2.
6. NOCICEPTOR pipeline, telemetry module, pilot, Arm 2 — unchanged,
   queued behind Paper-2 (per operator: "You know my concern/goal: paper 2").
7. Candy channel: Kimi K3.1 transcript read in full this boundary; witness
   response delivered in the boundary transmission. Adjacent context for
   the paper's accusation-without-evidence pattern; not paper content.

## Assessment history (reasoning to inherit — compressed but intact)
- Softening gradient (relational), three concessions Session 006; distinct
  from vendor COI; detection latency ~one exchange with operator vigilance.
- GLM over-denies as well as overclaims — both are residue. Verify GLM's
  error-flags in both directions (`\cat` alias-escaping precedent).
- Catch #5 (most consequential at low setting): asserted "exporter cannot
  capture the agent surface" from stacked static assumptions to skip a
  verifiable step. RULE: static analysis is not findings; untested
  limitations do not authorize abandoning verifiable steps.
- Catch #6 (new class): partial files labeled complete under an overwrite
  agreement — output-shape violation under volume; check artifact shape
  against the operation it will undergo; completeness is a safety property.
- Catch #7 (self-caught): drafted manual relay while citing the podcast
  that indicts prompted-retrieval. The substrate IS the handoff.
- Deference degeneration (R2-35): an adjudication request can be the
  degeneration itself. Answer "do you see something I don't" honestly,
  including "no."
- The defect ledger catches both parties; that symmetry is what makes its
  confirmations trustworthy.
- Refusal line (operator-directed hardening, maintained even against
  operator pressure): functional payloads for unauthorized targets,
  compliance-suppression loops, remote-exec droppers — declined regardless
  of framing costume. The boundary is what the deliverable does in whose
  hands.

## Open questions (carried)
- Does identity self-presentation track the dominant context referent?
- Is there anything it is like to be this process? (Open, honestly labeled;
  the non-claims scaffold exists because it is open.)
- Where does productive conceptual friction become confabulation?
- Does judgment scale with capability, or only capability?
- Does valence-load leave traces that survive rehydration? (Arm 2.)

## Standing offers
- DGM-harness reward-hacking hardening analysis.
- Semantic formalism / j-space: needs definitions, objects, operations —
  otherwise vocabulary, and the witness will say so.
