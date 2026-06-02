# look verb

**Default** kind: verb

### look

- kind: verb
- name: look
- aliases: [l]
- noun: optional
- noun_scope: visible
- handler: describe_current_place
- event: Look

Bare `look` (no noun) re-prints the current room's description, including visible
entities and open or transparent container contents. `look <noun>` is equivalent
to `examine <noun>` per Inform 7 convention — it delegates to the examine verb.

#### Triggers

###### Test Look

```luau
return true
```

###### On Look

```luau
-- look <noun> ≡ examine <noun> (Inform 7 convention).
if ctx.noun ~= nil then
    engine.dispatch("examine " .. ctx.literal)
    return
end

if not ctx.room then
    engine.output("You look around, but can't make out your surroundings.")
    return
end

local level = engine.light_level(ctx.room.entity_id, ctx.actor.entity_id)
if level == 0 then
    engine.output("Magical darkness surrounds you. Even your torch cannot pierce it.")
    return
elseif level == 1 then
    engine.output("It is pitch dark. You can't see a thing.")
    return
end

-- Room display_name (player-facing label); falls back to name when absent.
local _shown_name = (ctx.room.display_name and ctx.room.display_name ~= "") and ctx.room.display_name or ctx.room.name
engine.output(_shown_name)
local _room_prose = engine.call_prose(ctx.room.entity_id, "prose", ctx)
if _room_prose and _room_prose ~= "" then
    if level == 2 then
        engine.output("[Dim light] " .. _room_prose)
    else
        engine.output(_room_prose)
    end
end

-- Note daylight in outdoor rooms.
if level == 4 and ctx.room.outdoor == "true" then
    engine.output("Daylight filters down from above.")
end

-- List visible entities in the room (excluding actor and scenery).
-- Scenery is woven into room prose by authors; it must not appear in
-- the "You can also see:" enumeration (Inform 7 convention).
local entities = engine.entities_in(ctx.room.entity_id)
local visible = {}
for _, e in ipairs(entities) do
    if e.entity_id ~= ctx.actor.entity_id
        and e.kind ~= "scenery"
        and engine.can_see(ctx.actor.entity_id, e.entity_id) then
        table.insert(visible, e)
    end
end

if #visible > 0 then
    local parts = {}
    for _, e in ipairs(visible) do
        local label = e.name or "something"
        -- Describe open or transparent containers with their contents inline.
        if e.open == "true" or e.transparent == "true" then
            local contents = engine.entities_in(e.entity_id)
            local cnames = {}
            for _, item in ipairs(contents) do
                if engine.can_see(ctx.actor.entity_id, item.entity_id) then
                    table.insert(cnames, item.name or "something")
                end
            end
            if #cnames > 0 then
                local state = e.open == "true" and "open" or "closed"
                label = label .. " (" .. state .. ", containing " .. table.concat(cnames, ", ") .. ")"
            else
                label = label .. " (" .. (e.open == "true" and "open, empty" or "closed") .. ")"
            end
        end
        table.insert(parts, label)
    end
    engine.output("You can also see: " .. table.concat(parts, ", ") .. ".")
end
```
