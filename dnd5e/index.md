# D&D 5e Standard Library

[core](../core/index.md)

**Lua** [crimson_reavers](crimson_reavers.lua)

- version: 0.1.0
- layer: 2
- name: dnd5e
- system: dnd5e

> Layer 2 of the FML standard library: the D&D 5e game-rule-system package.
> Defines the mechanical kinds and attribute schemas for 5e: ac, hp, ability
> scores, classes, spell slots, conditions, basic actions. Imports the
> Layer 1 core world model.

## Kinds

### NPC

- kind: kind_definition
- name: npc
- ancestor: actor
- attributes:
  - ac: integer
  - hp: integer
  - cr: number
  - type: string
  - speed: string
  - str: integer
  - dex: integer
  - con: integer
  - int: integer
  - wis: integer
  - cha: integer
  - senses: string
  - damage_immunities: string
  - condition_immunities: string

> Any creature in a 5e encounter: PCs, NPCs, monsters, summons. Carries the
> familiar attribute schema (ac, hp, cr, ability scores, conditions,
> spell slots).

### Item

- kind: kind_definition
- name: item
- ancestor: object

> 5e items: weapons, armor, consumables, magic items.

### Room

- kind: kind_definition
- name: room
- ancestor: place

> A 5e dungeon room — exits to other rooms, contents, ambient features.

### Encounter

- kind: kind_definition
- name: encounter
- ancestor: entity
- attributes:
  - combatants: list
  - trigger: dict
  - xp: integer

> A combat or event encounter. Carries combatants, trigger, xp.

### Quest

- kind: kind_definition
- name: quest
- ancestor: entity
- attributes:
  - visible: boolean
  - reward: dict

> A scoring objective, visible or hidden. Carries reward, completion
> predicate, discovery predicate (for hidden quests).

### Wandering

- kind: kind_definition
- name: wandering
- ancestor: entity

> A random-encounter table.

### Adjudicator Note

- kind: kind_definition
- name: adjudicator_note
- ancestor: entity

> A DM-facing meta-note about scoring, rule interpretation, or floor
> context. Has prose but no mechanical attributes.

### Spell

- kind: kind_definition
- name: spell
- ancestor: entity
- attributes:
  - school: string
  - level: integer
  - components: string
  - range: string
  - save_dc: integer

## Section to Kind

- People: npc
- Items: item
- Rooms: room
- Encounters: encounter
- Quests: quest
- Wandering: wandering
- Adjudicator Notes: adjudicator_note
- Spells: spell

## Subsection to Kind

- Traits: trait
- Actions: action
- Reactions: reaction
- Legendary Actions: legendary_action
- Spells: spell
- Entries: wandering_entry

## Game Object Kinds

**Default** kind: kind_definition

Concrete 5e overlay kinds. Each extends a core kind and adds default property
values and trigger bodies. Floor authors declare entities with `- kind: character`,
`- kind: monster`, `- kind: weapon`, etc.; the engine loads these templates at
boot and inherits their trigger bodies into every instance.

### character

- kind: kind_definition
- name: character
- ancestor: actor
- attributes:
  - class: nil
  - level: 1
  - race: nil
  - hp: 10
  - hp_max: 10
  - ac: 10
  - speed: 30
  - str: 10
  - dex: 10
  - con: 10
  - int: 10
  - wis: 10
  - cha: 10
  - proficiency_bonus: 2
  - xp: 0
  - inspiration: false

> A player character. Carries the full 5e stat block, proficiency bonus, XP,
> and inspiration flag. On Level Up and On Death are the two lifecycle triggers
> authors override per-character.

#### Triggers

###### On Level Up

```lua
-- Announce level-up; stat advancement handled by class feature triggers (v0.2).
engine.output(ctx.self.name .. " levels up to level " .. ctx.self.level .. "!")
```

###### On Death

```lua
-- Announce death; death-saving-throw loop is a v0.2 concern.
engine.output(ctx.self.name .. " has died!")
```

### monster

- kind: kind_definition
- name: monster
- ancestor: npc
- attributes:
  - cr: 0
  - xp_value: 0
  - hostile: true
  - initiative: 0

> An NPC combatant. Extends npc with CR, XP award value, and an initiative
> cache. On Death fires MonsterDefeated so the quest and scoring layers can
> react without coupling directly to the actor lifecycle event.

#### Triggers

###### On Death

```lua
-- Announce defeat and fire the scoring hook.
engine.output(ctx.self.name .. " is defeated!")
engine.fire_event("MonsterDefeated", { id = ctx.self.id })
```

### vendor

- kind: kind_definition
- name: vendor
- ancestor: npc
- attributes:
  - hostile: false
  - gold: 100

> A shopkeeper NPC. Not hostile by default; carries gold for buy/sell
> transactions. Trade mechanics (buy, sell, haggle verbs) are v0.2.

#### Triggers

###### On Examine

```lua
-- Default vendor greeting; authors override per-vendor for personality.
engine.output(ctx.self.name .. " has goods for trade.")
```

### weapon

- kind: kind_definition
- name: weapon
- ancestor: item
- attributes:
  - portable: true
  - damage_dice: "1d4"
  - damage_type: "bludgeoning"
  - attack_bonus: 0
  - range: "melee"
  - properties: {}

> A weapon item. damage_dice and damage_type are the raw authored values;
> the combat layer applies proficiency and ability modifiers at attack time
> (v0.2). properties captures 5e weapon tags (finesse, thrown, versatile, etc.).

#### Triggers

###### On Examine

```lua
-- Describe damage output in-world.
engine.output(ctx.self.name .. " deals " .. ctx.self.damage_dice .. " " .. ctx.self.damage_type .. " damage.")
```

### armor

- kind: kind_definition
- name: armor
- ancestor: item
- attributes:
  - portable: true
  - ac_bonus: 0
  - armor_type: "light"
  - strength_requirement: 0
  - stealth_disadvantage: false

> A suit of armor. ac_bonus is the bonus over the base AC formula the
> armor_type implies (light: 11+dex, medium: 12+dex(max2), heavy: fixed).
> The Wear trigger applies the bonus; the Remove trigger strips it (v0.2).

#### Triggers

###### On Examine

```lua
-- Report effective AC for this armor type.
engine.output(ctx.self.name .. " provides AC " .. (10 + ctx.self.ac_bonus) .. ".")
```

### shield

- kind: kind_definition
- name: shield
- ancestor: item
- attributes:
  - portable: true
  - ac_bonus: 2

> A shield, always +2 AC. Treated identically to armor for equip/unequip
> purposes but occupies the off-hand slot, not the body slot (v0.2 slot model).

### consumable

- kind: kind_definition
- name: consumable
- ancestor: item
- attributes:
  - portable: true
  - uses: 1

> An item with a finite use count. Authors set uses; On Use decrements the
> counter and the item auto-destroys at 0 (v0.2 auto-destroy). Subtypes
> (potion, scroll, ration) extend this with effect-specific triggers.

#### Triggers

###### On Use

```lua
-- Announce consumption; subtype triggers handle the mechanical effect.
engine.output("You use " .. ctx.self.name .. ".")
-- TODO: engine.decrement_uses(ctx.self.id) -- v0.2
```

### potion

- kind: kind_definition
- name: potion
- ancestor: consumable
- attributes:
  - portable: true
  - uses: 1
  - effect: "healing"
  - dice: "2d4+2"

> A drinkable consumable. The canonical subtype is a healing potion (2d4+2 HP).
> Authors override effect and dice for other potion types. Full heal application
> via engine.heal is deferred to v0.2.

#### Triggers

###### On Use

```lua
-- Announce consumption; heal effect pending v0.2 engine.heal primitive.
engine.output("You drink the " .. ctx.self.name .. ".")
-- TODO: engine.heal(ctx.actor.id, ctx.self.dice) -- v0.2
```

### dungeon_room

- kind: kind_definition
- name: dungeon_room
- ancestor: room
- attributes:
  - light_level: "dim"
  - explored: false

> A dungeon room with darkness and exploration tracking. Defaults to dim light
> (torches or no source). On Enter marks the room explored and announces the
> name; authors override for first-entry narrative.

#### Triggers

###### On Enter

```lua
-- Announce room name and mark explored on first visit.
engine.output(ctx.self.name)
engine.set_property(ctx.self.id, "explored", true)
```

### safe_room

- kind: kind_definition
- name: safe_room
- ancestor: room
- attributes:
  - can_rest: true
  - light_level: "bright"

> A rest area: no wandering monsters, bright light by default, and can_rest
> true so the rest verb accepts it. Long rest and short rest mechanics are v0.2.

### chest

- kind: kind_definition
- name: chest
- ancestor: container
- attributes:
  - portable: false
  - locked: false
  - lock_dc: 0

> A lockable treasure chest. Not portable by default. InsteadOf Open refuses
> if locked; authors set locked: true and lock_dc for puzzles. Lock-picking
> (thieves' tools + Dexterity check against lock_dc) is v0.2.

#### Triggers

###### InsteadOf Open

```lua
-- Refuse to open a locked chest; pass through if unlocked.
if ctx.self.locked then
    engine.output("The chest is locked.")
    return engine.cancel()
end
```

### door

- kind: kind_definition
- name: door
- ancestor: scenery
- attributes:
  - portable: false
  - open: true
  - locked: false
  - lock_dc: 0
  - connects: nil

> A door connecting two rooms. open tracks current state; connects is the
> id of the room on the other side (optional, for the Go verb to follow the
> link). Locked doors require a key or a Dexterity (thieves' tools) check
> against lock_dc (v0.2).

#### Triggers

###### On Open

```lua
-- Swing the door open.
engine.set_property(ctx.self.id, "open", true)
engine.output("The door swings open.")
```

###### On Close

```lua
-- Swing the door shut.
engine.set_property(ctx.self.id, "open", false)
engine.output("The door swings shut.")
```
