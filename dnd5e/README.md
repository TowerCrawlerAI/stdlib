# D&D 5e Standard Library Package

The canonical TowerAI stdlib package: defines what *room*, *npc*, *item*, *encounter*, *quest*, etc. mean in 5e terms.

**Status:** stub. No content authored yet. The parser currently uses a hardcoded fallback equivalent to a minimal subset of what this package will eventually contain. See `docs/design/STDLIB.md` for the rollout plan.

## What this package will provide

- **Entity kind definitions** (per `docs/design/FML.md` § 7) covering: `npc`, `item`, `room`, `encounter`, `quest`, `wandering`, `adjudicator_note`, `spell`, `condition`.
- **5e-specific subkinds**: `trait`, `action`, `reaction`, `legendary_action`, `class_feature`, `weapon`, `armor`, `potion`, `scroll`, `magic_item`.
- **Default behaviors** for each kind (e.g. `npc.on_init` computes max HP and proficiency bonus; `npc.on_damaged` applies resistances/vulnerabilities/immunities).
- **Attribute schemas** validating per-kind property keys.
- **Section → Kind mapping** for the parser's heuristic resolver.
- **Sub-entity grouping conventions** (`#### Traits` → trait, `#### Actions` → action, etc.).
- **Helper script modules** under `scripts/` (attack rolls, saves, dice, conditions, healing).

## How a floor uses this package

```markdown
# My Floor

[stdlib](stdlib/dnd5e/index.md)

- number: 3

> Floor intro prose...

## People

### Skull King

- ac: 20
- hp: 180

> The Skull King is...
```

The `[stdlib]` import puts the 5e package's kind definitions in scope. Then `### Skull King` under `## People` resolves (via the package's `Section → Kind` map) to kind `npc`, which validates the property list against the `npc` attribute schema and binds the default `on_init` / `on_damaged` behaviors.

## Versioning

The package will declare a semver version in its `index.md` (once authored). Floors can pin a version via `[stdlib@x.y.z](stdlib/dnd5e/index.md)`. Mismatch raises `FmlStdlibError`.

## Cross-references

- `docs/design/FML.md` — the language this package is written in.
- `docs/design/STDLIB.md` — how stdlib packages are structured, loaded, and composed.
- `docs/design/RUNTIME.md` — how default behaviors execute at sim time.
