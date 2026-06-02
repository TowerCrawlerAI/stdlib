# enter verb

**Default** kind: verb

### enter

- kind: verb
- name: enter
- aliases: [entering, go into, get in]
- noun: required
- noun_scope: reachable
- handler: enter_handler
- event: Enter
- prompt_no_noun: Enter what?

Enter a container, vehicle, enclosed space, or enterable object. If the noun
is a room (via an `inside` exit), behaves like `go inside`. If the noun is an
enterable object (container or supporter with `enterable: true`), moves the
actor into/onto the object.

#### Triggers

###### Test Enter

```luau
if ctx.noun == nil then return false end
-- Rooms are always enterable via go mechanics.
if ctx.noun.kind == "room" then return true end
-- Enterable non-room containers: must be open (or have no open property).
if ctx.noun.enterable == "true" then
    -- open == nil (no property) → treat as open for backward compat.
    -- open == "false" explicitly → refuse (closed container).
    if ctx.noun.open == "false" then return false end
    return true
end
return false
```

###### InsteadOf Enter

```luau
if ctx.noun == nil then
    engine.output("Enter what?")
    return
end
if ctx.noun.kind ~= "room" and ctx.noun.enterable ~= "true" then
    engine.output("You can't enter that.")
    return
end
-- Closed container: refuse entry.
if ctx.noun.open ~= nil and ctx.noun.open ~= "true" then
    engine.output(ctx.noun.name .. " is closed.")
    return
end
```

###### On Enter

```luau
if ctx.noun.kind == "room" then
    -- Treat as a go command targeting the room directly.
    engine.move_actor(ctx.actor.entity_id, ctx.noun.entity_id)
else
    -- Move the actor into the enterable object.
    engine.move_actor(ctx.actor.entity_id, ctx.noun.entity_id)
    engine.output("You climb into " .. ctx.noun.name .. ".")
end
```

###### After Enter

```luau
-- If now inside a non-room object, describe visible contents from inside.
local actor_ent = engine.query_entity(ctx.actor.entity_id)
local loc_id = actor_ent and tonumber(actor_ent.location or "0") or 0
local loc_ent = loc_id ~= 0 and engine.query_entity(loc_id) or nil
local loc_kind = loc_ent and loc_ent.kind or nil
if loc_kind ~= nil and loc_kind ~= "room" then
    local contents = engine.entities_in(loc_id)
    local visible = {}
    for _, e in ipairs(contents) do
        if e.entity_id ~= ctx.actor.entity_id and engine.can_see(ctx.actor.entity_id, e.entity_id) then
            table.insert(visible, e.name or "something")
        end
    end
    if #visible > 0 then
        engine.output("Also here: " .. table.concat(visible, ", ") .. ".")
    end
end
```

###### Report Enter

