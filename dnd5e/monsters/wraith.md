# Wraith

## Monsters

### Wraith

- kind: monster
- archetype: wraith
- cr: 5
- type: undead
- size: medium
- alignment: chaotic evil
- abilities:
  - str: 6
  - dex: 16
  - con: 16
  - int: 12
  - wis: 14
  - cha: 15
- hp: 110
- max_hp: 110
- ac: 13
- speed:
  - fly: 60
- proficiency_bonus: 3
- senses: [darkvision 60 ft, passive perception 12]
- damage_immunities: [acid, cold, fire, lightning, necrotic, piercing, poison, psychic, slashing, thunder]
- condition_immunities: [charmed, exhaustion, frightened, grappled, paralyzed, petrified, poisoned, prone, restrained]
- languages: [all languages it knew in life]
- allegiance: undead

> A towering specter of pure malevolence, wreathed in wisps of ectoplasmic shadow.
> The wraith's rage at being trapped between life and death makes it a scourge of the living.

#### Attacks

##### Life Drain

- kind: attack
- attack_bonus: 6
- damage: "3d8"
- damage_type: necrotic
- reach: 5

##### Enervating Touch

- kind: attack
- attack_bonus: 6
- damage: "2d6"
- damage_type: necrotic
- reach: 5

#### Traits

##### Incorporeal

- kind: feature
- source: undead
- effect: can pass through other creatures and objects as if they were difficult terrain

> A wraith can move through other creatures and objects.
