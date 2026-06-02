# Hobgoblin

## Monsters

### Hobgoblin

- kind: monster
- archetype: hobgoblin
- cr: 0.5
- type: humanoid
- size: medium
- alignment: lawful evil
- abilities:
  - str: 13
  - dex: 12
  - con: 12
  - int: 12
  - wis: 10
  - cha: 9
- hp: 11
- max_hp: 11
- ac: 18
- speed:
  - walk: 30
- proficiency_bonus: 2
- senses: [darkvision 60 ft, passive perception 10]
- languages: [goblin]
- allegiance: goblinoid

> Disciplined and militaristic, a hobgoblin fights with the coordination of seasoned soldiers.
> Where goblins are chaos, hobgoblins are order—a far more dangerous chaos.

#### Attacks

##### Longsword

- kind: attack
- attack_bonus: 3
- damage: "1d8+1"
- damage_type: slashing
- reach: 5

##### Shortbow

- kind: attack
- attack_bonus: 3
- damage: "1d6+1"
- damage_type: piercing
- range: 80/320

#### Traits

##### Martial Advantage

- kind: feature
- source: goblinoid
- effect: gains bonus action once per turn to move up to 30 feet without provoking

> A hobgoblin moves with disciplined grace.
