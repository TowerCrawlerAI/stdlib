# Actor Kind

## Kinds

### Actor

- kind: kind_definition
- name: actor
- ancestor: entity
- attributes:
  - ac: integer
  - hp: integer
  - max_hp: integer
  - speed: integer
  - str: integer
  - dex: integer
  - con: integer
  - int: integer
  - wis: integer
  - cha: integer
  - allegiance: string
  - at_location: link

> Abstract base kind for any creature that can take a turn in combat — player
> characters, NPCs, monsters, summons. Higher layers (character, monster) add
> class-specific and CR-based attributes on top of this shared schema.
