#!/usr/bin/env bash
# validate_pregens.sh — schema checks for the dnd5e launch pregens.
#
# These JSON files are inert to `make lower` (consumed by Loom + Shuttle), so
# they need their own guard. Asserts, per pregen:
#   - valid JSON with the required top-level keys (pregen_id, sheet, state)
#   - every state.inventory item carries props.slot ∈ {carried, worn}
#     (the engine relates worn items to the `worn` edge at spawn — wyrd #123)
#   - any weapon damage prop looks like a dice expression (NdM[+K])
#   - state.stats keeps exactly the four engine portable stats
#
# Run from repo root:  bash tests/validate_pregens.sh
set -u
cd "$(dirname "${BASH_SOURCE[0]}")/.."

command -v jq >/dev/null || { echo "FAIL — jq required" >&2; exit 2; }

PREGENS_DIR="dnd5e/pregens"
EXPECTED="cleric fighter rogue wizard"
fails=0
pass() { echo "PASS — $1"; }
fail() { echo "FAIL — $1"; fails=$((fails + 1)); }

echo "[validate_pregens]"

for id in $EXPECTED; do
  f="$PREGENS_DIR/$id.json"
  [[ -f "$f" ]] || { fail "$id: missing $f"; continue; }

  if ! jq -e . "$f" >/dev/null 2>&1; then
    fail "$id: invalid JSON"; continue
  fi

  # Required top-level keys.
  jq -e 'has("pregen_id") and has("sheet") and has("state")' "$f" >/dev/null \
    && pass "$id: has pregen_id/sheet/state" \
    || fail "$id: missing a required top-level key"

  # pregen_id matches the filename.
  PID=$(jq -r '.pregen_id' "$f")
  [[ "$PID" = "$id" ]] && pass "$id: pregen_id matches filename" \
                       || fail "$id: pregen_id '$PID' != '$id'"

  # Every inventory item has a valid slot.
  BAD_SLOT=$(jq -r '[.state.inventory[] | select((.props.slot // "") as $s | $s != "carried" and $s != "worn") | .name] | join(", ")' "$f")
  [[ -z "$BAD_SLOT" ]] && pass "$id: every inventory item has slot carried|worn" \
                       || fail "$id: items with bad/missing slot: $BAD_SLOT"

  # Weapon damage props are dice expressions (NdM optionally +K / -K).
  BAD_DMG=$(jq -r '[.state.inventory[] | select(.props.damage != null) | select((.props.damage | test("^[0-9]+d[0-9]+([+-][0-9]+)?$")) | not) | .name] | join(", ")' "$f")
  [[ -z "$BAD_DMG" ]] && pass "$id: weapon damage props are valid dice" \
                      || fail "$id: items with bad damage dice: $BAD_DMG"

  # state.stats is exactly the four engine portable stats.
  STAT_KEYS=$(jq -r '.state.stats | keys | sort | join(",")' "$f")
  [[ "$STAT_KEYS" = "ac,hp,level,max_hp" ]] \
    && pass "$id: state.stats has the four portable stats" \
    || fail "$id: state.stats keys = '$STAT_KEYS' (want ac,hp,level,max_hp)"
done

echo ""
echo "---"
if [[ $fails -eq 0 ]]; then echo "ALL PASS"; exit 0; else echo "FAILED: $fails"; exit 1; fi
