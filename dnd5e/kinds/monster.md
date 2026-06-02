# Monster Kind

## Kinds

### Monster

- kind: kind_definition
- name: monster
- ancestor: actor
- attributes:
  - archetype: string
  - cr: number
  - type: string
  - size: string
  - alignment: string
  - proficiency_bonus: integer
  - senses: list
  - damage_resistances: list
  - damage_immunities: list
  - damage_vulnerabilities: list
  - condition_immunities: list
  - languages: list
  - weights: dict

> A rules-controlled adversary — CR-based, authored in FML. May be a
> reusable template (skeleton_archer) or a named unique instance (skull_king).
> Templates are never actors themselves; the encounter materializes instances.
