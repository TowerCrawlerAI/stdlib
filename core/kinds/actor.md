# Actor Kind

**Default** kind: kind_definition

Concrete game-object actor — extends the abstract actor from abstract.md with
HP, inventory, and movement logic. Floor authors use `kind: actor` (or subkinds
like `npc`) for all acting entities.

### actor

- kind: kind_definition
- name: actor
- ancestor: entity
- attributes:
  - hp: integer
  - hp_max: integer
  - at_location: link
  - location: identifier
  - inventory: list
  - alive: boolean

Any entity that can take actions: player characters, NPCs, monsters. The
On Move trigger validates that the requested exit exists and delegates to
`engine.relate`/`engine.unrelate` (the v0.1 graph primitives that subsume the
old `move_actor` name — see ENGINE_MODEL §11). The TODO comment below reflects
the pre-LPG name; the real call is `relate`/`unrelate` once the engine wires
the location relation to the `go` verb.

#### Triggers

###### On Move

```lua
-- Validate the exit exists, then move the actor.
local exits = ctx.self.exits or {}
local dest = exits[ctx.direction]
if not dest then
    engine.output("You can't go that way.")
    return engine.cancel()
end
-- TODO: engine.relate(ctx.actor.id, "location", dest) -- v0.1; replaces old move_actor name (ENGINE_MODEL §11)
engine.output(ctx.actor.name .. " moves " .. (ctx.direction or "away") .. ".")
```

###### On Take

```lua
-- Delegate to the item's On Take trigger via a fire_event call.
engine.fire_event("Take", { actor = ctx.actor.id, target = ctx.noun.id })
```
