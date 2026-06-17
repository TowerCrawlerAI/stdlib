# dnd5e pregens — the four level-3 pillars

**Status: DRAFT — needs dnd5e review.** Added 2026-06-17.

The launch pregen roster for Tapestry's commercial onboarding (`../../../wiki/design/ONBOARDING.md`
§3; Decisions §21): the **four-pillar party at level 3** — Fighter, Cleric, Rogue, Wizard. Players pick
and name one of these on the character-select screen; a server-side Loom endpoint copies the template
into a new Firestore `characters/{id}` doc. Nothing ships above level 3.

These are **content** (not lowered Lua): JSON published as the `pregens-json` release artifact and
consumed by Shuttle (the picker) and Loom (the create endpoint). They are inert to `make lower`.

## Schema

Each file is the pregen wrapper defined in `wiki/operationalize/20-character-store.md` §4:

```jsonc
{
  "pregen_id": "fighter",
  "_status": "DRAFT — needs dnd5e review",
  "portrait": "pregens/portraits/fighter.png",   // relative asset ref; Shuttle resolves it at render time
  "sheet":  { ...CharacterRecord },              // presentation — matches shuttle/src/lib/characterData.ts
  "state":  { "inventory": [...], "stats": {...}, "props": {} }  // engine-portable state
}
```

- **`sheet`** validates against Shuttle's `CharacterRecord` interface (abilities, saves, skills,
  equipment, spells). `skillProficiencies` use the `SKILLS` keys from `characterData.ts` (e.g.
  `sleight_of_hand`).
- **`state.stats`** carries only the **engine portable props** (`hp, max_hp, ac, level`) the dnd5e
  layer reads on `spawn_actor`. Nothing else in `state` survives spawn/despawn — the engine's
  portable-prop list is exactly those four.
- **`state.inventory`** items are `{name, props}`; weapon *mechanics* (damage dice) belong to the
  dnd5e kinds, not to `state` (carried-item portable props are also only `hp/max_hp/ac/level`). The
  sheet's `equipment` carries the human-readable detail.

## Review checklist (this PR)

- [ ] Ability arrays + racial bonuses are legal (standard array used; racial allocation is a draft).
- [ ] HP (avg-roll rule), AC (armor + shield + Dex), proficiency bonus (+2 at L3) are correct.
- [ ] Save + skill proficiencies match class/background; Rogue expertise is right.
- [ ] Spell slots (Cleric/Wizard: 4×1st, 2×2nd at L3), cantrip counts, prepared lists are correct.
- [ ] `state.stats` `hp/max_hp/ac/level` match the reviewed sheet.
- [ ] Starting equipment matches class starting gear.
- [ ] Optional racial nuances (e.g. Hill Dwarf Toughness HP) are intentionally in or out.

When reviewed, drop the `_status` field (or set it to `"reviewed"`) and wire the `pregens-json`
artifact into the release pipeline (`Makefile` / `lower.yml`).

## Drafting assumptions

Standard array (15/14/13/12/10/8) before racial bonuses; PB +2; average-roll HP; no optional racial
HP/feature nuances baked in unless noted. Portraits reference `pregens/portraits/*.png` in the
`static-assets` repo (a new CC0 set, not yet sourced).
