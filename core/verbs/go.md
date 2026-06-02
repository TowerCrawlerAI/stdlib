# go verb

**Default** kind: verb

### go

- kind: verb
- name: go
- aliases: [move, walk, travel]
- noun: optional
- noun_scope: directions
- handler: go_handler
- event: Go
- events: [on_enter, on_exit]
- prompt_no_noun: Go which way?

Move through an exit of the current room. The noun is a direction name or exit label. Bare direction words (`north`, `n`, etc.) are rewritten by the dispatcher to `go <direction>` before stage dispatch.

#### Triggers

###### Test Go

```luau
return ctx.room ~= nil
```

###### On Go

```luau
local direction = (ctx.literal ~= nil and ctx.literal ~= "") and ctx.literal or ctx.verb
local dest_id = engine.resolve_direction(ctx.room.entity_id, direction)
if dest_id then
    -- Check for a door on this exit before moving.
    -- The room's "exit_door_id:<direction>" property holds the resolved
    -- engine entity id of the door (set during LFR post-processing).
    local door_key = "exit_door_id:" .. direction
    local room_entity = engine.query_entity(ctx.room.entity_id)
    local door_id_str = room_entity and room_entity[door_key]
    if door_id_str ~= nil then
        local door_id = tonumber(door_id_str)
        if door_id ~= nil then
            local door = engine.query_entity(door_id)
            if door ~= nil then
                local state = door.state or "closed"
                local passable = (state == "open" or state == "broken")
                if not passable then
                    -- Emit appropriate blocked prose.
                    if state == "locked" then
                        local prose = door.locked_prose or "It is locked."
                        engine.output(prose)
                    else
                        local prose = door.closed_prose or "The way is blocked by a closed door."
                        engine.output(prose)
                    end
                    return
                end
            end
        end
    end
    engine.move_actor(ctx.actor.entity_id, dest_id)
    -- Auto-look after movement: Report Go fires engine.dispatch("look") if supported,
    -- otherwise the engine's after-go look hook handles it.
else
    engine.output("You can't go that way.")
end
```

###### After Go

```luau
-- Fire After Enter on the destination room so room-level entry triggers run.
local direction = (ctx.literal ~= nil and ctx.literal ~= "") and ctx.literal or ctx.verb
local dest_id = engine.resolve_direction(ctx.room and ctx.room.entity_id or 0, direction)
if dest_id then
    engine.call_trigger(dest_id, "after:Enter", ctx)
end
```

###### Report Go

```luau
-- Trigger an automatic look after successful movement.
-- engine.dispatch is a best-effort call; if not yet bound, movement still completes.
if engine.dispatch then
    engine.dispatch("look")
end
```
