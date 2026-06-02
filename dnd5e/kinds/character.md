# Character Kind

## Kinds

### Character

- kind: kind_definition
- name: character
- ancestor: actor
- attributes:
  - class: string
  - subclass: string
  - level: integer
  - race: string
  - subrace: string
  - background: string
  - alignment: string
  - proficiency_bonus: integer
  - hit_dice: string
  - archetype: string
  - saves_proficient: list
  - skills_proficient: list
  - spells_known: list
  - spells_prepared: list
  - features: list
  - inventory: list
  - weights: dict

> A player-controllable PC or named NPC. Authored in FML; persistent across
> the entire campaign. Carries class/level/race identity, ability scores,
> proficiencies, spell list, equipment, and per-character utility weights.
