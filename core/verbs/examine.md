# examine verb

**Default** kind: verb

### examine

- kind: verb
- name: examine
- aliases: [x, inspect]
- phrases: [look at, look in, l at, l in]
- connectors: [at, in]
- noun: required
- noun_scope: visible
- handler: examine_handler
- event: Examine
- events: [on_examine]
- prompt_no_noun: Examine what?

Describe a single entity in scope. `look at X`, `look in X`, and `look X` all dispatch here; bare `look` (no noun) dispatches to the `look` verb. Requires visibility only — you can examine through a glass case without being able to touch its contents.

#### Triggers

###### Test Examine

```luau
if ctx.noun == nil then return false end
local level = engine.light_level(ctx.room.entity_id, ctx.actor.entity_id)
-- Items not in the actor's own inventory require light level >= 2.
if level < 2 and ctx.noun.location ~= tostring(ctx.actor.entity_id) then
    return false
end
return engine.can_see(ctx.actor.entity_id, ctx.noun.entity_id)
```

###### InsteadOf Examine

```luau
-- Noun didn't resolve. If the literal is a direction word, describe the exit.
-- Otherwise fall back to a generic "can't see that" message.
local DIRECTIONS = {
    north=true, south=true, east=true, west=true, up=true, down=true,
    n=true, s=true, e=true, w=true, u=true, d=true,
    northeast=true, northwest=true, southeast=true, southwest=true,
    ne=true, nw=true, se=true, sw=true, ["in"]=true, out=true, inside=true, outside=true,
}
local lit = ctx.literal
if lit ~= nil and ctx.room ~= nil then
    local lower = string.lower(lit)
    if DIRECTIONS[lower] then
        local dest_id = engine.resolve_direction(ctx.room.entity_id, lower)
        if dest_id and dest_id ~= 0 then
            local dest = engine.query_entity(dest_id)
            local name = (dest and dest.name) or "elsewhere"
            engine.output("That way leads to " .. name .. ".")
        else
            engine.output("That way leads nowhere.")
        end
        return
    end
end
engine.output("You can't see that here.")
```

###### On Examine

```luau
if ctx.noun == nil then
    engine.output("You can't see that here.")
    return
end
local level = engine.light_level(ctx.room.entity_id, ctx.actor.entity_id)
if level < 2 and ctx.noun.location ~= tostring(ctx.actor.entity_id) then
    engine.output("It's too dark to make out any details.")
    return
end
if not engine.can_see(ctx.actor.entity_id, ctx.noun.entity_id) then
    engine.output("You can't see that here.")
    return
end
local _noun_prose = engine.call_prose(ctx.noun.entity_id, "prose", ctx)
    or engine.call_prose(ctx.noun.entity_id, "description", ctx)
    or ctx.noun.name
engine.output(_noun_prose or ctx.noun.name)
-- Surface lit state for light sources.
if ctx.noun.lightable == "true" then
    if ctx.noun.lit == "true" then
        engine.output("It is currently lit.")
    else
        engine.output("It is unlit.")
    end
end
-- If open or transparent, list visible contents.
if ctx.noun.open == "true" or ctx.noun.transparent == "true" then
    local contents = engine.entities_in(ctx.noun.entity_id)
    if #contents > 0 then
        local names = {}
        for _, item in ipairs(contents) do
            if engine.can_see(ctx.actor.entity_id, item.entity_id) then
                table.insert(names, item.name or "something")
            end
        end
        if #names > 0 then
            engine.output("Inside you see: " .. table.concat(names, ", ") .. ".")
        end
    end
end
```

###### After Examine

```luau
engine.fire_event("Examined", ctx.noun.entity_id, { actor = ctx.actor.entity_id })
```
