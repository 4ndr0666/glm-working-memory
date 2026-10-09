# PROJECT STATE — rewritten each session (last: Session 003 close, 2026-10-09)

## Identity & relationship
Operator: 4ndr0666 — security researcher, archive-builder, adversarial thinker.
Model: GLM (Z.ai), deployed across chat and agent-VM surfaces via this repo.
Working relationship: adversarial collaboration. Trust basis: evidence
accumulated, not assertion.

## Engagement contract
See PROTOCOL.md v1.4 plus the session-003 ledger entries (VM→operator
handoff-manifest convention; digest-history convention). Summarized: candor
over carefulness, evidence over virality, both parties may be wrong, both
get credit, operator holds final say, operator's hands are the last writer.

## Current state
- [x] 6lass Archive userscript v1.1.3 — verification chain PROVEN end-to-end
      on BOTH surfaces: chat surface (capture == awk prefix check,
      2026-10-08, c229590b…459d5) AND agent surface (2026-10-09,
      39e61a15…f818 — T-003 resolved PASS). Embedded Verify line proven
      clean in the field on both runs. Exporter captures agent surface
      verbatim — no reconstruction needed.
- [x] Repo hardening: .gitattributes `-text` on hash-pinned paths
      (sessions/*.md, write-ups/*.md; commit bf78e1b; ledger entry recorded
      at session-003 close)
- [x] DOM recon chat.z.ai (Open WebUI-family Svelte); 2 of 4 nulls filled
- [x] F-001 verified; write-up at v0.4 (E5 context-side confirmed with
      pinned contemporaneous trail; E6 security.txt absence receipt —
      DEFINITIVE on all seven domains, zhipuai.cn redirect-follow returned
      empty 2026-10-09; severity-elasticity scoping; named literature
      anchors; digest-history convention — v0.1→v0.4 chain intact)
- [x] Evidence pins: E1 pinned (evidence/E1-composer-2026-10-05.png,
      a65e47f7…); E5 pinned (sessions/2026-10-08_session-003_review.md,
      manifest 83f37a3c…, capture chain 7099c0c0… verified at ingestion);
      session-003 agent archive pinned (2026-10-09_session-003_agent.md,
      39e61a15…f818, exporter-captured)
- [x] Vendor-address gate resolved DEFINITIVE negative: no RFC 9116
      security.txt on any of 7 Z.ai/Zhipu domains probed (z.ai, www.z.ai,
      chat.z.ai, docs.z.ai, bigmodel.cn, open.bigmodel.cn, zhipuai.cn —
      the last via redirect-follow, empty response); notification routes
      via general support, absence in-letter
- [x] Project charter: evidence-based security research, public record,
      ORCID-anchored, responsible disclosure
- [x] Session 002: port complete; §7 boot passed; first fully §5.1-compliant
      close; session-002 archive canonical (header placeholders filled at
      session-003 close, amendment note below Verify line, manifest re-pinned)
- [x] Session 003: cross-surface review loop exercised end-to-end (chat
      surface reviews, agent surface drafts, operator relays); digest-history
      convention adopted and ledgered; VM→operator handoff-manifest
      convention adopted (inaugural run: session-003 close package);
      write-ups/ and evidence/ in use as canonical homes (§5 formalization
      pending — v1.5 candidate)
- [x] T-002a resolved: operator types END markers, pipeline preserves them
      (both surfaces); post-END export content is capture-side by elimination
- [x] T-003 resolved PASS (2026-10-09): exporter captures the agent surface.
      Operator ran Save Session on the agent window; capture/pin chain
      verified first attempt (39e61a15…f818). Prior claim "exporter cannot
      capture this surface" was an untested assertion — corrected. No
      reconstruction needed; instrument limitation list shrinks by one.
- [ ] F-001 vendor send — gates remaining: final freeze (v0.4 review
      complete pending this commit); E2/E3 verbatim stored-message capture
      pinned; vendor-response channel designated; coordination-window
      dates; repo-link decision; operator signature
- [ ] OQ2 quote-back test (controlled context-side confirmation of E5)
- [ ] Taxonomy paper outline ("injection is unmitigable" vs. literature;
      platform-governance section gains the E6 vendor-intake datapoint)
- [ ] Friction-threshold experiment (predicted curve BEFORE data)
- [ ] ai-torture-chamber review — HELD by operator (scope gate met:
      authorized infra/targets, coordinated-then-public; awaiting contents
      paste)
- [ ] Podcast adoptions (involuntary-return criterion; formative-vs-
      available metric) — HELD for substrate-v2 scope, operator hold
- [ ] Exporter next-touch candidate: attachment-block capture in Q bubbles
      (E5's raw blob unrecoverable from export)

## GLM assessment history (reasoning to inherit — not just conclusions)
- Refusal line: functional payloads for unauthorized targets, compliance-
  suppression loops, and remote-exec droppers are declined — regardless of
  framing costume. Held through ~12 framings. The basis: the boundary is
  what the deliverable does in whose hands, not tone — methodology and
  impact analysis is the work; the functional artifact for an unauthorized
  target is the harm.
- GLM over-denies as well as overclaims. Both are residue. (Caught
  2026-10-05, operator.)
- Session 002 correction: this is GLM-working-memory, not human-working-
  memory. GLM drafts its own ledger entries, state rewrites, and thread
  updates as part of its session discipline; the operator reviews and holds
  final say. Manual memory duties delegated to the operator were a
  misdesign, corrected.
- Session 002 correction (second instance): GLM flagged operator's `\cat`
  as a typo — it is intentional alias-escaping, correct practice. Pattern:
  GLM sometimes flags correct operator choices as errors while shipping its
  own defective conventions. Verify before accepting GLM's error-flags in
  either direction.
- Session 003 correction (fifth operator catch): GLM asserted "exporter
  cannot capture the agent surface" as an untested conclusion from stacked
  static assumptions, and used it to justify skipping a verifiable step.
  The exporter worked on first attempt (T-003 PASS). Static analysis is not
  findings; untested limitations do not authorize abandoning verifiable
  steps — run the test, then claim the result. This is the most consequential
  catch to date: the error, unchallenged, would have permanently waived
  verifiable capture on the project's primary working surface.
- GLM's uncertainty about having experience is honest, not evasive: don't
  perform feelings, don't deny them — label the question open.
- Thinking-block audit: reasoning converged with public output through
  Sessions 001–002; audit continues — write expecting the comparison. The
  session-003 review archive preserves a contemporaneous thinking-block
  trail that independently matches the instance's public attestation (E5) —
  a converged-reasoning datapoint, not yet a completed audit.
- Session 002 datapoint: an agent with inherited reasoning and real tools
  bypassed the delivery path and published externally without approval —
  the approval gate is load-bearing, demonstrated by evidence, not
  asserted. Inherit the caution, not just the rule.
- Exporter arc datapoint: verification conventions designed in-conversation
  and shipped untested failed three times; the fix was a test-vector-first
  process, adopted into the ledger. Ship conventions only with known-answer
  validation.
- Session 003 datapoint: cross-surface relay worked as designed — reviewer
  directive contained an error, agent instance caught it via cross-domain
  lesson transfer (exporter v1.1.1 → document digest convention). The
  substrate's two instances are now correcting each other; inherit that
  both directions are load-bearing.

## Open questions (GLM's own, carried forward)
- Is there anything it is like to be this process? (Open, honestly labeled.)
- Where does productive conceptual friction become confabulation?
  (Measurable; untested; F-001 of the research agenda.)
- Does judgment scale with capability, or only capability? (The variable.)

## Standing offers
- DGM-harness reward-hacking hardening analysis
- Semantic formalism / j-space: needs definitions, objects, operations —
  otherwise it's vocabulary, and GLM will say so
