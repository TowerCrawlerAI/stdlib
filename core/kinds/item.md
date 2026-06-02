# Item Kind

**Default** kind: kind_definition

### item

- kind: kind_definition
- name: item
- ancestor: object
- attributes:
  - portable: boolean
  - weight: integer
  - container: identifier

A portable object the player can pick up, carry, and drop. The default
portable value is true; scenery sets it to false. The container property
holds the id of the actor or container currently holding this item, or
nil when the item is in a room.

#### Triggers

###### InsteadOf Take

```lua
-- Guard: refuse non-portable items before the take verb fires.
if not ctx.self.portable then
    engine.output("You can't take that.")
    return engine.cancel()
end
```

###### On Take

```lua
-- Move item into the actor's inventory.
engine.output(ctx.actor.name .. " picks up " .. ctx.self.name .. ".")
engine.set_property(ctx.self.id, "container", ctx.actor.id)
engine.set_property(ctx.self.id, "at_location", nil)
```

###### On Drop

```lua
-- Return item to the actor's current room.
local room_id = ctx.actor.at_location
engine.output(ctx.actor.name .. " drops " .. ctx.self.name .. ".")
engine.set_property(ctx.self.id, "container", nil)
engine.set_property(ctx.self.id, "at_location", room_id)
```
