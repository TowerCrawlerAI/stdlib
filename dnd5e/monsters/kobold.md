# Kobold

## Monsters

### Kobold

- kind: monster
- archetype: kobold
- cr: 0.125
- type: humanoid
- size: small
- alignment: lawful evil
- abilities:
  - str: 7
  - dex: 15
  - con: 9
  - int: 8
  - wis: 7
  - cha: 8
- hp: 5
- max_hp: 5
- ac: 12
- speed:
  - walk: 30
- proficiency_bonus: 2
- senses: [darkvision 60 ft, passive perception 8]
- languages: [draconic]
- allegiance: kobold

> A wiry reptilian humanoid, scales dull and eyes bright with cunning intelligence.
> Kobolds work in swarms and lay traps—solo, one is easily dispatched.

#### Attacks

##### Dagger

- kind: attack
- attack_bonus: 4
- damage: "1d4+2"
- damage_type: piercing
- reach: 5

##### Sling

- kind: attack
- attack_bonus: 4
- damage: "1d4+2"
- damage_type: bludgeoning
- range: 30/120

#### Traits

##### Pack Tactics

- kind: feature
- source: kobold
- effect: gains advantage on attack rolls against a target if at least one ally is within 5 feet of the target

> A kobold has advantage on an attack roll against a creature if at least one of the kobold's allies is within 5 feet of the target.
