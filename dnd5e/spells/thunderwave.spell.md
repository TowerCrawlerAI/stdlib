# Thunderwave Spell

## Spells

### Thunderwave

- kind: spell
- id: thunderwave
- level: 1
- school: evocation
- casting_time: action
- range: self (15 ft cube)
- components: [v, s]
- duration: instantaneous
- damage: "2d8"
- damage_type: thunder
- damage_per_upcast_slot: "1d8"
- mechanics_module: tower.rules.spells.thunderwave

> A wave of thunderous force pushes creatures away from you. Each creature in a
> 15-foot cube originating from you must make a Constitution saving throw. On a
> failed save, a creature takes 2d8 thunder damage and is pushed 10 feet away
> from you. On a successful save, the creature takes half as much damage and
> isn't pushed.
