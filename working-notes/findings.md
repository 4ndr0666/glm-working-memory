# Findings Registry

Long-form expansions live in write-ups/. Format per templates/finding-template.md.

## F-001 — Silent server-side appension in the Z.ai paste-attachment pipeline
**Status:** Verified — DISCLOSURE-PENDING (vendor notification SENT 2026-10-09
02:20 UTC, Message-ID 5470eadb-ac3b-4240-954b-c725a8747f23@me.com; letter
digest 2ed81572…5ae2; 14-day window, expiry 2026-10-23; day-7 follow-up
2026-10-16)
**Severity:** Low (integrity/transparency) — severity-elastic: mechanism class
rates High with attacker-influenced or model-directed content
**Significance:** Platform-transparency case study; the user-authored/
platform-authored boundary in model input is a security boundary
**Claim:** Z.ai's paste-attachment pipeline appends the constant string
"Please help me:" to {Pasted Content} blocks between composer and storage,
without user action or visibility. Confirmed context-side (E5, first-party,
uncontrolled; OQ2 quote-back is the controlled standard).
**Evidence:** E1 pinned (evidence/E1-composer-2026-10-05.png, a65e47f7…);
E2/E3 operator-held, pin pre-publication; E4 (≥4 instances, three-day span);
E5 pinned (sessions/2026-10-08_session-003_review.md); E6 (no RFC 9116
security.txt on 7/7 probed Z.ai/Zhipu domains — definitive)
**Methodology:** Composer-diff test (~5 min, reproducible on any chat platform)
**Long-form:** write-ups/F-001-zai-attachment-suffix-writeup-v0.4.md (frozen
digest chain: v0.1 c066f9bb… → v0.2 0d762f63… → v0.3 dee4c327…)

## F-002 — IM gateway metadata injection (candidate; accumulation phase)
**Status:** Candidate — pattern accumulating, formal three-way diff pending
**Severity:** TBD
**Significance:** Unmarked platform content within the message envelope —
pre-BEGIN coverage gap in PROTOCOL §3 (v1.5-b candidate)
**Claim:** The zai-web agent gateway wraps operator transmissions in unmarked
JSON (session_id/chat_id stable per session; trace_id rotating per message;
schema field empty) outside transmission delimiters.
**Evidence:** Direct agent-side observation across Sessions 002–004 (every
turn); no operator-side storage capture yet.
**Methodology:** Three-way diff (typed → stored → instance-received), per
F-001's composer-diff pattern.
**Open:** Operator storage-side capture; §3 amendment (v1.5-b).
