# Skeleton Warrior

## Monsters

### Skeleton Warrior

- kind: monster
- archetype: skeleton_warrior
- cr: 0.5
- type: undead
- size: medium
- alignment: lawful evil
- abilities:
  - str: 13
  - dex: 14
  - con: 15
  - int: 6
  - wis: 8
  - cha: 5
- hp: 22
- max_hp: 22
- ac: 14
- speed:
  - walk: 30
- proficiency_bonus: 2
- senses: [darkvision 60 ft, passive perception 9]
- damage_vulnerabilities: [bludgeoning]
- damage_immunities: [poison]
- condition_immunities: [exhaustion, poisoned]
- languages: [understands all languages it knew in life but can't speak]
- allegiance: undead

> Gripping a blackened sword in one bony fist, remnants of armor clinging to its form.
> Time has not diminished its martial discipline—only its mercy.

#### Attacks

##### Shortsword

- kind: attack
- attack_bonus: 5
- damage: "1d6+3"
- damage_type: piercing
- reach: 5

##### Parry

- kind: attack
- attack_bonus: 5
- damage: "1d4+3"
- damage_type: piercing
- reach: 5

#### Traits

##### Undead Nature

- kind: feature
- source: undead
- effect: doesn't require air, food, drink, or sleep

> A skeleton doesn't need to breathe, eat, or sleep.
