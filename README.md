# FML Standard Library

This folder hosts the **FML standard library** — the body of FML+Python definitions that gives meaning to the entity kinds used in floor and party documents.

The stdlib is **layered**. See `docs/design/STDLIB.md` for the full seven-layer architecture; this README is the quick map.

## The seven layers (cumulative; each imports the layers below)

| # | Layer | Where it lives | What it defines |
|---|---|---|---|
| **1** | Core world model | `stdlib/core/` *(planned)* | system-agnostic primitives: entity, place, actor, object, position, distance, time |
| **2** | Game rule system | `stdlib/dnd5e/` *(stub)* | 5e mechanics: ac, hp, classes, spells, conditions |
| **3** | Rule enhancements | `stdlib/dnd5e_tashas/`, `stdlib/dnd5e_planar/`, ... *(planned)* | optional supplements (Tasha's, Planar Adventures, BoVD) |
| **4** | Campaign setting | `settings/<setting>/` *(planned)* | the fictional world (The Tower, Forgotten Realms, ...) |
| **5** | Module rules | `modules/<module>/rules/` *(planned)* | module-specific meta-rules (Tower Climb's leaderboard, scoring, tavern) |
| **6** | The module | `modules/<module>/` *(planned)* | the adventure's structure (floor order, narrative arc, party roster) |
| **7** | Objects in the module | `modules/<module>/floors/`, `parties/`, ... *(currently `docs/Sample.md` as the canonical fixture)* | concrete floors, parties, NPCs, items |

Each layer adds to and may extend or override the layers below it. Layers 5–7 belong to a specific module; layers 1–4 are reusable across modules.

## How a floor imports the stack

A floor document imports only **one** line — the campaign setting:

```markdown
# The Bone Garden

[stdlib](../../settings/the_tower/index.md)

...
```

`settings/the_tower/index.md` transitively imports:
- `stdlib/dnd5e/index.md` (Layer 2)
- `stdlib/dnd5e_planar/index.md` (Layer 3, because the tower spans planes)

…which in turn imports `stdlib/core/index.md` (Layer 1). The author never enumerates the dependency chain by hand.

## Lowering the stdlib locally

The core FML definitions are authored as Markdown (`.md`) under `core/`. The
`fml-parser` CLI lowers them to a single Lua verb-module consumed by the
engine binary.

**Prerequisites** — install the parser once:

```sh
# Pinned release (once F4 ships):
pip install "fml_parser @ git+https://github.com/TowerCrawlerAI/fml-parser@main"
# …or from a local sibling clone during development:
pip install -e /path/to/fml-parser
```

**Build** — run the lowering:

```sh
make             # writes build/stdlib.lua
# or without Make:
python3 -m fml_parser --stdlib-module core/index.md -o build/stdlib.lua
```

The committed `build/stdlib.lua` is the canonical artifact. CI regenerates and
uploads it as a build artifact on every push/PR (see
`.github/workflows/lower.yml`).

## Current state (PoC bootstrap)

For the PoC, the parser uses a hardcoded fallback equivalent to a minimal Layer 1 + Layer 2 baked into the code. The directories listed as *planned* above are empty stubs; we fill them in incrementally per the rollout plan in `docs/design/STDLIB.md` § 9.

## What you can read today

- `docs/design/STDLIB.md` — the layered architecture, in depth
- `docs/design/FML.md` § 6, § 7 — how imports and stdlib resolution work
- `stdlib/dnd5e/README.md` — what the 5e package will eventually contain
