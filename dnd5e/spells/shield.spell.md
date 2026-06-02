# Shield Spell

## Spells

### Shield

- kind: spell
- id: shield
- level: 1
- school: abjuration
- casting_time: reaction
- reaction_trigger: when hit by attack or targeted by magic missile
- range: self
- components: [v, s]
- duration: 1 round
- ac_bonus: 5
- blocks: magic_missile
- mechanics_module: tower.rules.spells.shield

> An invisible barrier of magical force appears and protects you. Until the
> start of your next turn, you have a +5 bonus to AC, including against the
> triggering attack, and you take no damage from magic missile.
