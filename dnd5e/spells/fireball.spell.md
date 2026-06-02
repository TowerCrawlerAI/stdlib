# Fireball Spell

## Spells

### Fireball

- kind: spell
- id: fireball
- level: 3
- school: evocation
- casting_time: action
- range: 150 ft
- components: [v, s, m]
- material: a tiny ball of bat guano and sulfur
- duration: instantaneous
- damage: "8d6"
- damage_per_upcast_slot: "1d6"
- damage_type: fire
- save: dex
- save_dc: spell_save_dc
- save_effect: half
- aoe: { shape: sphere, radius_ft: 20 }
- target_filter: any
- mechanics_module: tower.rules.spells.fireball

> A bright streak flashes from your pointing finger to a point you choose
> within range and then blossoms with a low roar into an explosion of flame.
> Each creature in a 20-foot-radius sphere must make a Dexterity saving throw,
> taking 8d6 fire damage on a failed save, or half as much on a success.
