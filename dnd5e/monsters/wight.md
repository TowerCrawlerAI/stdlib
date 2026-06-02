# Wight

## Monsters

### Wight

- kind: monster
- archetype: wight
- cr: 3
- type: undead
- size: medium
- alignment: chaotic evil
- abilities:
  - str: 15
  - dex: 14
  - con: 16
  - int: 10
  - wis: 13
  - cha: 15
- hp: 45
- max_hp: 45
- ac: 15
- speed:
  - walk: 30
- proficiency_bonus: 2
- senses: [darkvision 60 ft, passive perception 11]
- damage_immunities: [poison]
- condition_immunities: [exhaustion, poisoned]
- languages: [all languages it knew in life]
- allegiance: undead

> A towering revenant cloaked in shadow, its stolen crown still glinting upon its brow.
> The wight remembers what it was and dwells upon it endlessly—a bitterness made manifest.

#### Attacks

##### Longsword

- kind: attack
- attack_bonus: 5
- damage: "1d8+2"
- damage_type: slashing
- reach: 5

##### Life Drain

- kind: attack
- attack_bonus: 5
- damage: "2d6+2"
- damage_type: necrotic
- reach: 5

#### Traits

##### Undead Nature

- kind: feature
- source: undead
- effect: doesn't require air, food, drink, or sleep

> A wight doesn't need to breathe, eat, or sleep.
