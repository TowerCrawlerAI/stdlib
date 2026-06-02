# Skeleton

## Monsters

### Skeleton

- kind: monster
- archetype: skeleton
- cr: 0.125
- type: undead
- size: medium
- alignment: lawful evil
- abilities:
  - str: 10
  - dex: 14
  - con: 15
  - int: 6
  - wis: 8
  - cha: 5
- hp: 13
- max_hp: 13
- ac: 13
- speed:
  - walk: 30
- proficiency_bonus: 2
- senses: [darkvision 60 ft, passive perception 9]
- damage_vulnerabilities: [bludgeoning]
- damage_immunities: [poison]
- condition_immunities: [exhaustion, poisoned]
- languages: [understands all languages it knew in life but can't speak]
- allegiance: undead

> Bone bleached white by time and held together by faint necromantic will.
> These soldiers have forgotten what they fought for, remembering only to fight.

#### Attacks

##### Shortsword

- kind: attack
- attack_bonus: 4
- damage: "1d6+2"
- damage_type: piercing
- reach: 5

##### Shortbow

- kind: attack
- attack_bonus: 4
- damage: "1d6+2"
- damage_type: piercing
- range: 80/320

#### Traits

##### Undead Nature

- kind: feature
- source: undead
- effect: doesn't require air, food, drink, or sleep

> A skeleton doesn't need to breathe, eat, or sleep.
