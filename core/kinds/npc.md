# NPC Kind

**Default** kind: kind_definition

### npc

- kind: kind_definition
- name: npc
- ancestor: actor
- animate: true
- attackable: true
- attributes:
  - hp: integer
  - hp_max: integer
  - location: identifier
  - inventory: list
  - alive: boolean
  - hostile: boolean
  - dialogue: identifier

A non-player character. Extends actor with a hostile flag and an optional
dialogue identifier pointing to a dialogue tree or trigger handler. The
On Ask trigger fires when a player initiates conversation; authors override
it per-entity to implement specific NPC dialogue.

#### Triggers

###### On Ask

```lua
-- Default response when no dialogue is configured.
if ctx.self.dialogue then
    engine.fire_event("Dialogue", { actor = ctx.actor.id, npc = ctx.self.id, tree = ctx.self.dialogue })
else
    engine.output(ctx.self.name .. " has nothing to say.")
end
```
