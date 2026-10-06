# Verified Findings

## F-001 — Server-side message modification on Z.ai attachment pipeline
**Status:** Verified · **Severity:** Low (integrity) · **Significance:** platform-transparency case study
**Claim:** Z.ai's paste-attachment pipeline appends the string "Please help me:"
to `{Pasted Content}` blocks between the composer and message storage, without
user action or visibility.
**Evidence:**
- E1: Composer screenshot pre-send — attachment loaded, buffer clean (2026-10-05)
- E2: Saved message containing the suffix (session archive export)
- E3: DOM outerHTML of user bubble containing suffix, server-persisted
- E4: ≥3 independent attachments, all affected; no typed message affected
**Methodology:** composer-diff test (reproducible: load attachment → screenshot
composer → send → diff storage)
**Attribution hypothesis:** product UX (canned prompt-suffix), not targeted
injection. Testable: suffix should be a fixed constant across all attachments.
**Open:** constant-check across future sends; other suffixes?; other platforms?
