# Spell Kind

## Kinds

### Spell

- kind: kind_definition
- name: spell
- ancestor: entity
- attributes:
  - level: integer
  - school: string
  - casting_time: string
  - range: string
  - components: list
  - duration: string
  - damage: string
  - damage_type: string
  - save: string
  - save_dc: integer
  - save_effect: string
  - mechanics_module: string

> A 5e spell — cantrip or levelled. Authored once in the shared catalog;
> characters reference spells by id in spells_known / spells_prepared.
