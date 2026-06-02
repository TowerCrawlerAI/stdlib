# Zombie

## Monsters

### Zombie

- kind: monster
- archetype: zombie
- cr: 0.125
- type: undead
- size: medium
- alignment: lawful evil
- abilities:
  - str: 13
  - dex: 6
  - con: 16
  - int: 3
  - wis: 6
  - cha: 5
- hp: 22
- max_hp: 22
- ac: 8
- speed:
  - walk: 20
- proficiency_bonus: 2
- senses: [darkvision 60 ft, passive perception 8]
- damage_immunities: [poison]
- condition_immunities: [exhaustion, poisoned]
- languages: [understands all languages it knew in life but can't speak]
- allegiance: undead

> A shambling corpse held together by dark magic, movements jerky and uncoordinated.
> The thing that once was a person is long gone—only hunger and spite remain.

#### Attacks

##### Slam

- kind: attack
- attack_bonus: 3
- damage: "1d6+1"
- damage_type: bludgeoning
- reach: 5

##### Bite

- kind: attack
- attack_bonus: 3
- damage: "1d4+1"
- damage_type: piercing
- reach: 5

#### Traits

##### Undead Nature

- kind: feature
- source: undead
- effect: doesn't require air, food, drink, or sleep

> A zombie doesn't need to breathe, eat, or sleep.
