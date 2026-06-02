# Ghoul

## Monsters

### Ghoul

- kind: monster
- archetype: ghoul
- cr: 1
- type: undead
- size: medium
- alignment: chaotic evil
- abilities:
  - str: 15
  - dex: 16
  - con: 13
  - int: 7
  - wis: 10
  - cha: 6
- hp: 22
- max_hp: 22
- ac: 12
- speed:
  - walk: 30
- proficiency_bonus: 2
- senses: [darkvision 60 ft, passive perception 10]
- damage_immunities: [poison]
- condition_immunities: [exhaustion, poisoned]
- languages: [thieves' cant]
- allegiance: undead

> Gaunt and hollow-eyed, claws still stained with grave-dirt and worse.
> These wretches prowl the crypts, driven mad by unending hunger.

#### Attacks

##### Bite

- kind: attack
- attack_bonus: 4
- damage: "1d6+2"
- damage_type: piercing
- reach: 5

##### Claws

- kind: attack
- attack_bonus: 4
- damage: "1d6+2"
- damage_type: slashing
- reach: 5

#### Traits

##### Undead Nature

- kind: feature
- source: undead
- effect: doesn't require air, food, drink, or sleep

> A ghoul doesn't need to breathe, eat, or sleep.
