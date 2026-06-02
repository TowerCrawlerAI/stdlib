# Attack Kind

## Kinds

### Attack

- kind: kind_definition
- name: attack
- ancestor: entity
- attributes:
  - attack_bonus: integer
  - damage: string
  - damage_type: string
  - range: string
  - reach: integer

> A single attack definition — melee or ranged weapon attack. Authored as
> H5 sub-entities on a character or monster. At runtime the RulesEngine
> resolves proficiency and ability modifiers from the parent's stats.
