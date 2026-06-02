# Cure Wounds Spell

## Spells

### Cure Wounds

- kind: spell
- id: cure_wounds
- level: 1
- school: evocation
- casting_time: action
- range: touch
- components: [v, s]
- duration: instantaneous
- damage: "1d8"
- damage_type: healing
- damage_per_upcast_slot: "1d8"
- mechanics_module: tower.rules.spells.cure_wounds

> A creature you touch regains 1d8 + your spellcasting modifier hit points.
> This spell has no effect on undead or constructs.
