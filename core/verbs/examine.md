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
-- Graph ctx (engine-core STAGE_API.md): ctx.object is the noun node id (0 = none).
-- (Light gating dropped — the graph engine has no light model yet.)
if ctx.object == 0 then return false end
return engine.can_see(ctx.actor, ctx.object)
```

###### InsteadOf Examine

```luau
-- Noun didn't resolve. (Legacy direction-word exit description is dropped until
-- the graph engine models direction-labeled exits.)
engine.output("You can't see that here.")
```

###### On Examine

```luau
-- Graph ctx: ctx.object is the noun node id; props are real values (a boolean
-- prop reads back as a Lua boolean, not the string "true").
if ctx.object == 0 then
    engine.output("You can't see that here.")
    return
end
if not engine.can_see(ctx.actor, ctx.object) then
    engine.output("You can't see that here.")
    return
end
local desc = engine.get_prop(ctx.object, "description")
engine.output(desc or engine.get_prop(ctx.object, "name") or "You see nothing special.")
-- Surface lit state for light sources.
if engine.get_prop(ctx.object, "lightable") then
    if engine.get_prop(ctx.object, "lit") then
        engine.output("It is currently lit.")
    else
        engine.output("It is unlit.")
    end
end
-- If open or transparent, list visible contents: items whose "in" edge points
-- at this object (incoming "in" neighbours).
if engine.get_prop(ctx.object, "open") or engine.get_prop(ctx.object, "transparent") then
    local contents = engine.neighbors(ctx.object, "in", "in")
    local names = {}
    for _, id in ipairs(contents) do
        if engine.can_see(ctx.actor, id) then
            local nm = engine.get_prop(id, "name")
            if nm then table.insert(names, nm) end
        end
    end
    if #names > 0 then
        engine.output("Inside you see: " .. table.concat(names, ", ") .. ".")
    end
end
```
