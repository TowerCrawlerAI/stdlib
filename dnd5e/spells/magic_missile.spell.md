# Magic Missile Spell

## Spells

### Magic Missile

- kind: spell
- id: magic_missile
- level: 1
- school: evocation
- casting_time: action
- range: 120 ft
- components: [v, s]
- duration: instantaneous
- damage: 3x(1d4+1)
- damage_per_upcast_slot: 1x(1d4+1)
- damage_type: force
- target_filter: any
- auto_hit: true
- mechanics_module: tower.rules.spells.magic_missile

> You create three glowing darts of magical force. Each dart hits a creature
> of your choice that you can see within range. A dart deals 1d4+1 force damage
> to its target. The darts all strike simultaneously and can be directed at the
> same or different targets.
