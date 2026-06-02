# Ghast

## Monsters

### Ghast

- kind: monster
- archetype: ghast
- cr: 2
- type: undead
- size: medium
- alignment: chaotic evil
- abilities:
  - str: 16
  - dex: 17
  - con: 14
  - int: 7
  - wis: 10
  - cha: 8
- hp: 36
- max_hp: 36
- ac: 13
- speed:
  - walk: 40
- proficiency_bonus: 2
- senses: [darkvision 60 ft, passive perception 10]
- damage_immunities: [poison]
- condition_immunities: [exhaustion, poisoned]
- languages: [thieves' cant]
- allegiance: undead

> Larger and more feral than its lesser kin, driven to savagery by centuries of undeath.
> The reek of decay hangs in the air where a ghast has stalked.

#### Attacks

##### Bite

- kind: attack
- attack_bonus: 5
- damage: "1d8+3"
- damage_type: piercing
- reach: 5

##### Claws

- kind: attack
- attack_bonus: 5
- damage: "1d6+3"
- damage_type: slashing
- reach: 5

#### Traits

##### Undead Nature

- kind: feature
- source: undead
- effect: doesn't require air, food, drink, or sleep

> A ghast doesn't need to breathe, eat, or sleep.
