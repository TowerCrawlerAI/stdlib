# Shadow

## Monsters

### Shadow

- kind: monster
- archetype: shadow
- cr: 0.5
- type: undead
- size: medium
- alignment: chaotic evil
- abilities:
  - str: 6
  - dex: 14
  - con: 13
  - int: 2
  - wis: 10
  - cha: 5
- hp: 16
- max_hp: 16
- ac: 12
- speed:
  - walk: 0
- proficiency_bonus: 2
- senses: [darkvision 60 ft, passive perception 10]
- damage_vulnerabilities: [radiant]
- damage_immunities: [necrotic, poison]
- condition_immunities: [exhaustion, grappled, paralyzed, petrified, poisoned, prone, restrained]
- languages: []
- allegiance: undead

> A writhing wisp of absolute darkness, animate malice given form.
> Light cuts through it as a sword cuts through fog, yet still it hungers.

#### Attacks

##### Strength Drain

- kind: attack
- attack_bonus: 4
- damage: "1d6+2"
- damage_type: necrotic
- reach: 5

##### Incorporeal Movement

- kind: attack
- attack_bonus: 4
- damage: "0"
- damage_type: nonlethal
- reach: 5

#### Traits

##### Incorporeal

- kind: feature
- source: undead
- effect: can pass through other creatures and objects as if they were difficult terrain

> A shadow can move through other creatures and objects.

