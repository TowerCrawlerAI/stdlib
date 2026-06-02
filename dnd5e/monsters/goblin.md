# Goblin

## Monsters

### Goblin

- kind: monster
- archetype: goblin
- cr: 0.125
- type: humanoid
- size: small
- alignment: neutral evil
- abilities:
  - str: 8
  - dex: 14
  - con: 10
  - int: 10
  - wis: 8
  - cha: 8
- hp: 7
- max_hp: 7
- ac: 15
- speed:
  - walk: 30
- proficiency_bonus: 2
- senses: [darkvision 60 ft, passive perception 9]
- languages: [goblin]
- allegiance: goblinoid

> A scrappy little troublemaker, quick to steal and quicker to run.
> Goblins fight dirty and in packs—never trust one alone.

#### Attacks

##### Scimitar

- kind: attack
- attack_bonus: 4
- damage: "1d6+2"
- damage_type: slashing
- reach: 5

##### Shortbow

- kind: attack
- attack_bonus: 4
- damage: "1d6+2"
- damage_type: piercing
- range: 80/320

#### Traits

##### Pack Tactics

- kind: feature
- source: goblinoid
- effect: gains advantage on attack rolls against a target if at least one ally is within 5 feet of the target

> A goblin has advantage on an attack roll against a creature if at least one of the goblin's allies is within 5 feet of the target.
