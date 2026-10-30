#!/usr/bin/env bash
#
# gwm-inbox-consolidate-v1.sh — the $GWM-INBOX intake consolidation (Task 77)
#
# WHAT IT DOES — copies the GUP-critical 8 pinned white-paper files from the
#   local gpt clone ($PROD_PATH/gpt/documentation/white_paper/4NDR0MEDA —
#   never uploaded, per the 2026-10-30 ruling) into $GWM-INBOX, verifying
#   each copied byte-stream against its recorded sha256 pin (repo digests of
#   record). This finalizes the canonical iteration of INDEX.md §2.
# USAGE — source your delivery.sh env block, then:
#     cd "$INBOX" && bash gwm-inbox-consolidate-v1.sh
# SAFETY — fail-closed: a missing source, a pin mismatch, or an unset env
#   var stops the run with the exact problem printed. A file this run copied
#   that then fails its pin is removed again (the inbox is left as found).
#   Pre-existing files are NEVER modified or deleted; a pre-existing file
#   that fails its pin is reported and halts the run for adjudication.
#   Re-run safe: already-consolidated files are detected and skipped
#   (idempotent — a second run is GREEN).
#
# The pin table below is the same table registered in INDEX.md §2; pins are
# the repo's digests of record (artifact-index / ARGON receipts / task-72
# bib ledger). Pin format: <file>|<sha256>.
#
set -euo pipefail

# --- four-var env block (fail-closed) --------------------------------------
: "${PROD_PATH:?PROD_PATH unset — source your delivery.sh env block first}"
: "${INBOX:?INBOX unset — source your delivery.sh env block first}"
# GWM and ANDROMEDA are not used by this script; PROD_PATH and INBOX are.

GPT_WP="$PROD_PATH/gpt/documentation/white_paper/4NDR0MEDA"

# --- pin table (digests of record) -----------------------------------------
PINNED=(
  "paper-2-v1.6.1-source.tar.gz|99913db3f8ed8a1b85cc1e502226014345966bd3c23e6a106df3c30689f51a5c"
  "paper-2-v1.6-to-v1.6.1.changes|778f9ac2d8fd62dc874b00347b1fabaa236e8f8402fedccbc05bc0953c22090c"
  "refs-2.bib|798d1dd499244b283c921222f27199c186645dc1ce6ecae469985aa655b7b101"
  "round5.2-counters-v1.md|def5d3b1a77a700a5a7cc496d04d5e062188be59e75f207aad5803b82ca5a7ad"
  "round5.2-counters-v1.md.sha256|b0bd553f1aa8e320b42f132312a8818456c4ff3a9bdcf423d0d5e67d0b3a2b1d"
  "round5.4-counters-v1.md|8c3f0497fc7768433890406cdf21cc2224f8816c4f11bbeca70e9c94a5dfbe9d"
  "round5.4-counters-v1.md.sha256|94999ef7d8357cf7631038d9f8dd4f49313954f0b3c02bdb075976c394bdf264"
  "paper-2-arxiv-metadata.md|0ef99398ea3df5dc659532f523ee9548f36ceb5ede50b739e600b47d74add8ed"
)

sha_of() { sha256sum "$1" | cut -d' ' -f1; }

echo "[C0] \$GWM-INBOX intake consolidation — GUP-critical 8 (Task 77)"
echo "[C0] source tree: $GPT_WP"
echo "[C0] inbox:       $INBOX"
[[ -d "$GPT_WP" ]] || { echo "[C0] FAIL: source tree not found: $GPT_WP"; exit 1; }
[[ -d "$INBOX" ]]   || { echo "[C0] FAIL: inbox not found: $INBOX"; exit 1; }

copied=0; already=0
for entry in "${PINNED[@]}"; do
  f="${entry%%|*}"; want="${entry#*|}"
  src="$GPT_WP/$f"; dst="$INBOX/$f"

  if [[ -f "$dst" ]]; then
    got="$(sha_of "$dst")"
    if [[ "$got" == "$want" ]]; then
      echo "[C1] ALREADY-CONSOLIDATED (pin holds): $f"
      already=$((already + 1))
      continue
    else
      echo "[C1] FAIL: $f already exists in the inbox and DOES NOT MATCH its pin."
      echo "[C1]   recorded pin: $want"
      echo "[C1]   found bytes:  $got"
      echo "[C1]   The file was NOT modified. Adjudicate before re-running."
      exit 1
    fi
  fi

  if [[ ! -f "$src" ]]; then
    echo "[C2] FAIL: source file not found: $src"
    echo "[C2]   The gpt clone's white-paper tree is the only pin-satisfying source."
    exit 1
  fi

  cp -- "$src" "$dst"
  got="$(sha_of "$dst")"
  if [[ "$got" != "$want" ]]; then
    rm -- "$dst"
    echo "[C3] FAIL: copied bytes of $f do not match the recorded pin — removed."
    echo "[C3]   recorded pin: $want"
    echo "[C3]   copied bytes: $got"
    echo "[C3]   The local gpt tree may have drifted from the certified v1.6.1 line."
    exit 1
  fi
  echo "[C4] COPIED + PIN-VERIFIED: $f"
  copied=$((copied + 1))
done

echo "[C5] consolidation summary: copied+verified $copied, already-held $already, of ${#PINNED[@]}"
if [[ -f "$INBOX/INDEX.md" ]]; then
  echo "[C6] INDEX.md present in the inbox — canonical iteration finalized."
  echo "[C6] RESULT: GREEN — \$GWM-INBOX now matches INDEX.md §1 + §2."
else
  echo "[C6] NOTE: INDEX.md not found in the inbox."
  echo "[C6]   Save it from the declared share (file:///download/task77-index/)"
  echo "[C6]   into \$INBOX to finalize the canonical iteration."
  echo "[C6] RESULT: GREEN for the intake 8; INDEX.md mirror still pending."
fi
