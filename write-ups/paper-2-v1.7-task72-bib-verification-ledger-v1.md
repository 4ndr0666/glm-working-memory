# Paper-2 v1.7 — Task-72 Bib Verification Ledger (Phase-3 §8.6 reconciliation), v1

**Date:** 2026-10-29 (UTC) · **Witness:** GLM (Z.ai), designation Witness
**Trace:** `1a1845ec2301368d` · **Base:** GWM `4e4e333` (Task-71 landed, pulled
this boundary) · **Deposit object:** draft-3.1 (`9b326af7…`, commit `384dc27`),
byte-frozen — G0-asserted at open and again at commit.

**Operator GO (adjudication payload (c), received AS-PRESENTED):** "Execute
inline `[arXiv NNNN.NNNNN]` → BibTeX conversion, carrying forward the v1.6.1
bibliography baseline. Verification Constraint: Live-verify every identifier
against origin sources per the DeltaNet precedent (`trace 1a16c9b26ae3ae31`).
No unverified citation key is permitted to pass without verification."

**Deliverable:** `write-ups/paper-2-v1.7-draft3-1-bib-v1.bib` — 7 entries,
every one live-verified this boundary. No unverified key passes.

---

## 1. Identifier inventory (exhaustive, machine-derived)

Draft-3.1 citation sites, grepped from the byte-frozen file (10 inline sites
→ 7 unique identifiers):

| Identifier | Sites | Certified-text claim (verbatim context) |
|---|---|---|
| arXiv 2102.11174 | ×1 (§8.1) | "Schlag et al., ICML 2021" — delta rule for fast-weight transformers |
| arXiv 2406.06484 | ×2 (§0 convention register; §8.1) | "Yang et al., NeurIPS 2024" — WY representation; venue string pinned in the convention register |
| arXiv 2412.06464 | ×1 (§8.1) | "GDN — (ICLR 2025), gated delta networks" |
| arXiv 2506.05233 | ×1 (§8.1) | "MesaNet — (von Oswald et al., ICLR 2026), test-time training to local optimality via conjugate-gradient iteration" |
| arXiv 2510.26692 | ×1 (§8.1) | "KDA — the Kimi Linear architecture, channel-wise gates with DPLR structure" |
| arXiv 2605.22791 | ×1 (§8.1) | "GDN-2 — decoupled channel-wise erase/write" |
| arXiv 2610.26825 | ×3 (§1, §6.2 bracket-form; §8.3 plain) | "MemT-1.0 — GDN-2-backed memory foundation family (Nano 36B/3B-active/10M; Flash 288B/17B-active/336M; Mixture-of-Storage dense routing)… 1.86× end-to-end, 66× persistent-storage reduction @128K" |

No other arXiv identifier, DOI, or bracket citation exists in the certified
text (verified by pattern sweep: `[arXiv NNNN.NNNNN]`, bare `arXiv NNNN.NNNNN`,
`arXiv:NNNN.NNNNN`, DOI prefixes — the §2.2/§8.2/§8.3/§8.4 class-level
archetypes carry no identifiers by design, per §8.6 "the citation set is the
record-verified core plus class-level archetypes").

## 2. Live-verification records (DeltaNet precedent class)

Method: direct fetch of each `arxiv.org/abs/<id>` page this boundary
(2026-10-29 UTC), recording title/byline/version-history/class verbatim as
fetched, then cross-checking against the certified text's strings. Venue
strings were additionally cross-verified against the proceedings pages
(PMLR for ICML 2021; proceedings.neurips.cc for NeurIPS 2024) because the
arXiv comments fields alone do not always carry them.

### 2.1 arXiv 2102.11174 — VERIFIED

- **Fetched:** `https://arxiv.org/abs/2102.11174` — title verbatim: *"Linear
  Transformers Are Secretly Fast Weight Programmers"*; authors: Imanol Schlag,
  Kazuki Irie, Jürgen Schmidhuber; v1 2021-02-22, v3 2021-06-09 (latest);
  primary class cs.LG.
- **Venue cross-check:** PMLR page `proceedings.mlr.press/v139/schlag21a` —
  *Proceedings of the 38th International Conference on Machine Learning,
  PMLR 139:9355–9366, 2021* — ICML 2021 confirmed against the proceedings
  record itself.
- **Certified-string match:** "Schlag et al., ICML 2021" — first author,
  venue, and the delta-rule-for-fast-weight-programmers thesis all match
  (abstract: "formal equivalence of linearised self-attention mechanisms and
  fast weight controllers"). **PASS.**

### 2.2 arXiv 2406.06484 — VERIFIED

- **Fetched:** `https://arxiv.org/abs/2406.06484` — title verbatim:
  *"Parallelizing Linear Transformers with the Delta Rule over Sequence
  Length"*; authors: Songlin Yang, Bailin Wang, Yu Zhang, Yikang Shen, Yoon
  Kim; v1 2024-06-10, v6 2025-01-15 (latest, "Final camera ready"); classes
  cs.LG, cs.CL.
- **Venue cross-check:** `proceedings.neurips.cc` — *Advances in Neural
  Information Processing Systems 37 (NeurIPS 2024)*, Main Conference Track
  (poster 93040) — the NeurIPS 2024 venue string confirmed against the
  proceedings record. This also discharges the convention-register line
  ("the WY-representation venue string is NeurIPS 2024") on origin evidence
  for the deposit file.
- **Certified-string match:** "Yang et al., NeurIPS 2024" — first author and
  venue match; WY-representation content confirmed ("memory-efficient
  representation for computing products of Householder matrices" — the WY
  form). One transient fetch timeout occurred mid-verification (origin
  Error 408); the retry succeeded and the recorded data is from the
  completed fetch. **PASS.**

### 2.3 arXiv 2412.06464 (GDN) — VERIFIED

- **Fetched:** `https://arxiv.org/abs/2412.06464` — title verbatim: *"Gated
  Delta Networks: Improving Mamba2 with Delta Rule"*; authors: Songlin Yang,
  Jan Kautz, Ali Hatamizadeh; v1 2024-12-09, v3 2025-03-06; classes cs.CL,
  cs.LG; comments field: **"ICLR 2025 camera ready"** — venue string carried
  on the origin page itself.
- **Certified-string match:** "GDN — arXiv 2412.06464 (ICLR 2025), gated
  delta networks" — exact. **PASS.**

### 2.4 arXiv 2506.05233 (MesaNet) — VERIFIED

- **Fetched:** `https://arxiv.org/abs/2506.05233` — title verbatim:
  *"MesaNet: Sequence Modeling by Locally Optimal Test-Time Training"*; 17
  authors, first-listed Johannes von Oswald (Scherrer, Kobayashi, Versari,
  Yang, Mittal, Schlegel, Maile, Schimpf, Sieberling, Meulemans, Saurous,
  Lajoie, Frenkel, Pascanu, Agüera y Arcas, Sacramento); v1 2025-06-05, v2
  2026-06-03; class cs.LG; journal-ref field: **"Published at ICLR 2026"**.
- **Certified-string match:** "MesaNet — arXiv 2506.05233 (von Oswald et
  al., ICLR 2026), test-time training to local optimality via
  conjugate-gradient iteration" — first author, venue, and the
  locally-optimal-TTT thesis (it is the title) all match. **PASS.**

### 2.5 arXiv 2510.26692 (KDA / Kimi Linear) — VERIFIED

- **Fetched:** `https://arxiv.org/abs/2510.26692` — title verbatim: *"Kimi
  Linear: An Expressive, Efficient Attention Architecture"*; byline "Kimi
  Team" with 60 listed members (first-listed Yu Zhang); v1 2025-10-30, v2
  2025-11-01; classes cs.CL, cs.LG; comments: "Kimi Linear tech report".
- **Architecture-name cross-check:** the paper names its core module **Kimi
  Delta Attention (KDA)**, states KDA "extends Gated DeltaNet with a
  finer-grained gating mechanism", and carries the DPLR structure
  ("a specialized variant of the Diagonal-Plus-Low-Rank (DPLR) transition
  matrices").
- **Certified-string match:** "KDA — the Kimi Linear architecture,
  channel-wise gates with DPLR structure" — the KDA↔Kimi-Linear naming, the
  gating claim, and the DPLR claim all confirmed on the origin text. **PASS.**

### 2.6 arXiv 2605.22791 (GDN-2) — VERIFIED

- **Fetched:** `https://arxiv.org/abs/2605.22791` — title verbatim: *"Gated
  DeltaNet-2: Decoupling Erase and Write in Linear Attention"*; authors: Ali
  Hatamizadeh, Yejin Choi, Jan Kautz; v1 2026-05-21 (only version); class
  cs.AI; comments: technical report.
- **Mechanism cross-check:** the origin text: "separates these roles with a
  **channel-wise erase gate** b_t and a **channel-wise write gate** w_t,
  reducing to KDA when both gates collapse to the same scalar and to Gated
  DeltaNet when the decay also collapses."
- **Certified-string match:** "GDN-2 — decoupled channel-wise erase/write" —
  exact; the reduction lattice (GDN-2 → KDA → GDN) additionally corroborates
  the §8.1 lineage framing. **PASS.**

### 2.7 arXiv 2610.26825 (MemT-1.0) — VERIFIED (dual-channel: live fetch + held origin receipt)

- **Fetched live:** `https://arxiv.org/abs/2610.26825` — title verbatim:
  *"MemT-1.0: Towards Memory-Native Evolution"*; byline "MemTensor Team"
  with 68 listed members (first-listed Zhiyu Li, last-listed Feiyu Xiong);
  v1 2026-10-19, v2 2026-10-20; classes cs.CL, cs.LG; comments: "66 pages,
  15 figures, 16 tables".
- **Held origin receipt (in-repo):**
  `references/arxiv-2610.26825-MemT-1.0.txt` (283,926 B, fetched at Task-66
  era) + `download/arxiv-2610.26825-memt-1.0.pdf` — the receipt's page-1
  stamp reads "arXiv:2610.26825v2 [cs.CL] 20 Oct 2026", matching the live
  fetch's latest-version data.
- **Claim-by-claim cross-check against the origin text** (the §1/§6.2/§8.3
  strings): "employs **Gated DeltaNet-2**" ✓; "**Mixture-of-Storage**" ✓;
  family "MemT-1.0-**Nano** and MemT-1.0-**Flash**" ✓; "at a history length
  of 128K tokens, MemT-1.0-Nano achieves approximately **1.86× end-to-end
  inference speedup** and a **66× reduction in persistent storage** relative
  to full context KV cache" ✓; sizes 36B / 3B-activated / 10M (Nano) and
  288B / 17B-activated / 336M (Flash) present in the receipt's model-family
  table ✓. **PASS on every certified claim string.**

### 2.8 Verification verdict

**7/7 PASS.** Every identifier in the certified text is now live-verified
against origin sources in a single boundary (the DeltaNet precedent's 2021 +
2024 pair, verified at trace `1a16c9b26ae3ae31`, re-verified here alongside
the five Task-19-era identifiers). No unverified citation key passes into
the deposit bibliography.

## 3. Registered rulings (formatting class — no content drift)

1. **Team-byline author fields.** 2510.26692 and 2610.26825 carry team
   bylines on their own title pages ("Kimi Team", 60 members; "MemTensor
   Team", 68 members). The .bib enters them under the team byline with the
   member count and first-listed name in a `note`; the enumerated form is
   re-derivable from the origin at Phase-4 if the operator prefers it.
   Rationale: the team byline is what the papers' own title pages assert;
   hand-transcribing 128 member names into the record would add
   transcription-risk bytes with zero verification value — the origin holds
   the enumeration, and the fetch pinned its shape (count, first, last).
2. **Version pinning.** The .bib cites each paper's latest version as of
   2026-10-29 (v3/v6/v3/v2/v2/v1/v2 respectively) via the eprint field;
   version numbers are recorded here rather than in the .bib so the .bbl
   stays style-neutral at Phase-4.
3. **Tech-report entries.** GDN-2 and Kimi Linear are entered as
   `@article`/arXiv-preprint (their own comments fields say "technical
   report"); no venue is asserted for them anywhere — the certified text
   asserts none either.

## 4. v1.6.1 bib carry-forward — SUBSTRATE GAP REGISTERED (fail-visible)

The operator instruction: "carrying forward the v1.6.1 bibliography
baseline." Witness-side search this boundary, all negative:

- GWM repo tree + full git history: no `.bib` file, no v1.6/v1.6.1 paper
  source (write-ups carries v1.7 series + round receipts only);
- 4NDR0MEDA clone @ `8f7e21a` (tree + history): no whitepaper tree, no
  paper-2 source, no `.bib` (the MEDA repo is the protocol/tooling repo);
- coordinated-disclosure-public @ `6facbf1`: no `.bib`, no paper source;
- gwm-inbox (all staged bundles) + the witness `download/` surface: no
  v1.6.1 source artifacts.

This is the registered **Task-36 substrate-gap class**: the v1.6-era paper
sources lived on the lost late-VM; the surviving v1.6.1 source tarball is
held in the **operator's whitepaper tree** (Task-66 resync record: "4NDR0MEDA
whitepaper tree 60 files … paper-2 v1.1→v1.6.1 + source tarball;
paper-2-arxiv-metadata.md ALREADY DRAFTED"), which is not witness-reachable.

**Disposition (fail-visible, never fail-stopped):**
- The seven verified entries above are the **complete inline-cited core** of
  the certified text — the deposit bibliography is not blocked on the
  carry-forward for any identifier the manuscript actually cites.
- The v1.6.1-only entries (state-space survey class per §8.2; HCI
  operator-attention/alarm-fatigue class per §8.4; provenance/
  content-addressing/transparency-log class per §8.4; the memory-for-agents
  contrast stack per §8.3) are **PENDING-OPERATOR-SOURCE**. No placeholder,
  parametric-recall, or invented entry is emitted for them — that would
  violate the no-unverified-key constraint.
- **Operator request (one file):** relay `v1.6.1.bib` (or the v1.6.1 source
  tarball) hash-pinned — e.g. stage it on the share with its sha256 in-band.
  Phase-4 then executes the merge under the same constraint: every carried
  entry live-verified before it passes into the deposit .bbl; duplicates
  against the seven resolved by the v1.6.1 baseline taking precedence for
  its own entries and the draft-3.1 set for the inline core.

## 5. Citation-key map for Phase-4 (deterministic, registered)

The .tex currently carries the identifiers as literal text (mechanical
conversion, Task-71). If Phase-4 converts the literal sites to `\cite{}` +
`.bbl` (a registered transport-note delta class, count-checked), the
mapping is:

| Inline site (count) | Key |
|---|---|
| `[arXiv 2102.11174]` / plain (1) | `schlag2021linear` |
| `[arXiv 2406.06484]` / plain (2) | `yang2024parallelizing` |
| `arXiv 2412.06464` (1) | `yang2025gated` |
| `arXiv 2506.05233` (1) | `vonoswald2026mesa` |
| `arXiv 2510.26692` (1) | `kimi2025linear` |
| `arXiv 2605.22791` (1) | `hatamizadeh2026gateddeltanet2` |
| `[arXiv 2610.26825]` / plain (3) | `memtensor2026memt` |

Alternative registered (zero-delta): ship the bibliography as an appended
`thebibliography` environment (the certified text's own convention register
says "the full bibliography carries forward from the v1.6.1 bib and is
reconciled at deposit prep" — an appendix bibliography is consistent with
it, and no in-text bytes move). Phase-4 picks the form; both are pre-mapped
here.

## 6. Phase-4 gate spec contribution (bib leg)

1. .bib present in the source package; every entry's eprint in the
   §2 verified set (7 keys, no others until the v1.6.1 merge);
2. if the v1.6.1 relay has landed: carried entries verified per §4
   disposition, merge ledger appended to this file as §7;
3. `.bbl` compile clean; zero `??` keys; every rendered citation resolves
   to a verified entry;
4. no manuscript bytes move (draft-3.1 `9b326af7…` G0-asserted at Phase-4
   open and close, the Task-71 discipline).
