# stdlib — CLAUDE.md

The FML-markdown **verb / kind / relation catalog** the engine runs. Part of the TowerCrawlerAI workspace;
see the root `CLAUDE.md` for the multi-repo map + pipeline, and `../wyrd/docs/design/ENGINE_MODEL.md`
for the engine this content targets.

## Layers

- `core/` — **v0.1**: the system-agnostic world model. `kinds/` (room, door, container, item, actor, npc, pc,
  …), `verbs/` (~70: look, go, take, drop, open, …), `events/`, `items/`. This is what v0.1 lowers + runs.
- `dnd5e/` — **v0.2** (stub/annotated): the D&D ruleset (monsters, spells, items, class features, kinds).
  Imports `core`. **Combat-only bindings** (`damage_entity`, `heal`, `apply_condition`/`remove_condition`,
  `apply_effect`, `decrement_uses`) are v0.2 — verbs that call them are annotated "v0.2 behavior (no-op in
  v0.1)". Do not rely on dnd5e for v0.1.

## How it's used (lowering)

The engine loads a *lowered* Lua verb-module, not the markdown. Produce it with `fml-parser`:

```bash
pip install -e ../clotho
make lower            # → build/stdlib.lua  (python -m fml_parser --stdlib-module core/index.md)
```

CI (`.github/workflows/lower.yml`) does this and uploads `stdlib.lua` as an artifact; engine-core's
assembly consumes it. (`build/stdlib.lua` is committed as an interim convenience; the design target is a
release artifact once fml-parser ships releases.)

## Authoring

Markdown with property lists + prose blockquotes + H6 trigger bodies (Luau). The FML language is specified
in `../wiki/design/FML.md`; the engine contracts the output must satisfy are in `ENGINE_MODEL.md` §9 (verbs
as stored procedures), §10 (built-in relations), §11 (binding surface) and `CoreRequirements.md` #14.

**Coming (SR, blocked on engine EG2/EG5 + fml-parser F6):** the flat verb catalog is reshaped so verbs
attach to the **relations** they query/mutate (emergent stored-procedures) per ENGINE_MODEL §9–§10.

## Editing

Normal git repo, base `main`. Branch → PR → merge. Never commit `.claude/`. Re-run `make lower` after
content changes to confirm it still lowers (exit 0).
