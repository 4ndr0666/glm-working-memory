FINDING F-001: Server-side message content modification on Z.ai attachment pipeline
STATUS: Verified (falsification path recorded)
SEVERITY: Low (integrity/UX) · Higher significance as AI-platform transparency case
EVIDENCE:
  E1: Composer screenshot pre-send (clean) — 2026-10-05
  E2: Saved message w/ appended string (archive export)
  E3: DOM outerHTML of user bubble containing suffix
  E4: Correlation across ≥3 independent attachments
METHODOLOGY: Composer-diff test (described, reproducible)
CAUSE HYPOTHESIS: Attachment pipeline appends canned prompt suffix
OPEN QUESTIONS: Fixed-constant check across future attachments; other suffixes?
