# exit verb

**Default** kind: verb

### exit

- kind: verb
- name: exit
- aliases: [exiting, leave, get out]
- noun: none
- handler: exit_handler
- event: Exit

Exit the current enterable object the actor is inside, or follow the room's
`outside` exit. If neither condition holds, refuse.

#### Triggers

###### Test Exit

```luau
return true
```

###### InsteadOf Exit

```luau
-- Determine if the actor is inside an enterable non-room object.
local actor_ent = engine.query_entity(ctx.actor.entity_id)
local actor_container = actor_ent and tonumber(actor_ent.location or "0") or 0
local container_ent = actor_container ~= 0 and engine.query_entity(actor_container) or nil
local actor_container_kind = container_ent and container_ent.kind or nil
local in_enterable = actor_container_kind ~= nil and actor_container_kind ~= "room"
if not in_enterable then
    local room_exits = ctx.room and ctx.room.exits or {}
    if not room_exits.outside and not room_exits.out then
        engine.output("There's nowhere to exit to.")
        return
    end
end
```

###### On Exit

```luau
-- Determine if the actor is inside an enterable non-room object.
local actor_ent = engine.query_entity(ctx.actor.entity_id)
local actor_container = actor_ent and tonumber(actor_ent.location or "0") or 0
local container_ent = actor_container ~= 0 and engine.query_entity(actor_container) or nil
local actor_container_kind = container_ent and container_ent.kind or nil
local in_enterable = actor_container_kind ~= nil and actor_container_kind ~= "room"

if in_enterable then
    -- Move actor to the containing room (the enterable object's location).
    local container_name = container_ent and container_ent.name or "it"
    local room_id = container_ent and tonumber(container_ent.location or "0") or 0
    if room_id ~= 0 then
        engine.move_actor(ctx.actor.entity_id, room_id)
        engine.output("You climb out of " .. container_name .. ".")
    else
        engine.output("You can't get out that way.")
    end
else
    -- Follow the room's outside/out exit.
    local room_exits = ctx.room and ctx.room.exits or {}
    local dest = room_exits.outside or room_exits.out
    if dest then
        engine.move_actor(ctx.actor.entity_id, dest)
    end
end
```

###### After Exit

###### Report Exit

