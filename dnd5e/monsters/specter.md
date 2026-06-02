# Specter

## Monsters

### Specter

- kind: monster
- archetype: specter
- cr: 1
- type: undead
- size: medium
- alignment: chaotic evil
- abilities:
  - str: 8
  - dex: 14
  - con: 11
  - int: 10
  - wis: 10
  - cha: 11
- hp: 22
- max_hp: 22
- ac: 12
- speed:
  - fly: 50
- proficiency_bonus: 2
- senses: [darkvision 60 ft, passive perception 10]
- damage_immunities: [acid, cold, fire, lightning, necrotic, piercing, poison, psychic, slashing, thunder]
- condition_immunities: [charmed, exhaustion, frightened, grappled, paralyzed, petrified, poisoned, prone, restrained]
- languages: [all languages it knew in life]
- allegiance: undead

> A translucent phantom, the wailing echo of a tormented soul bound to the mortal plane.
> It seeks vengeance against all the living.

#### Attacks

##### Life Drain

- kind: attack
- attack_bonus: 4
- damage: "1d8"
- damage_type: necrotic
- reach: 5

##### Chill Touch

- kind: attack
- attack_bonus: 4
- damage: "1d6"
- damage_type: cold
- reach: 5

#### Traits

##### Incorporeal

- kind: feature
- source: undead
- effect: can pass through other creatures and objects as if they were difficult terrain

> A specter can move through other creatures and objects.
