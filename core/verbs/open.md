# open verb

**Default** kind: verb

### open

- kind: verb
- name: open
- aliases: [open up]
- noun: required
- noun_scope: reachable
- noun_kind: container
- event: Open
- events: [on_open]
- prompt_no_noun: Open what?

Open a door, chest, or container. Fails if already open, locked, or sealed.

#### Triggers

###### Test Open

```luau
-- Graph ctx: ctx.object is the noun node id; props are real values (booleans,
-- not "true"). Doors use a "state" string; containers a boolean "open".
if ctx.object == 0 then return false end
local kind = engine.get_prop(ctx.object, "kind")
local openable = engine.get_prop(ctx.object, "openable")
    or kind == "container" or kind == "door"
if not openable then return false end
if kind == "door" then
    local state = engine.get_prop(ctx.object, "state") or "closed"
    if state == "locked" or state == "open" then return false end
else
    if engine.get_prop(ctx.object, "locked") then return false end
    if engine.get_prop(ctx.object, "open") then return false end
end
return true
```

###### InsteadOf Open

```luau
local name = engine.get_prop(ctx.object, "name") or "it"
local kind = engine.get_prop(ctx.object, "kind")
local openable = engine.get_prop(ctx.object, "openable")
    or kind == "container" or kind == "door"
if kind == "door" then
    local state = engine.get_prop(ctx.object, "state") or "closed"
    if state == "locked" then
        engine.output(name .. " is locked.")
    elseif state == "open" then
        engine.output(name .. " is already open.")
    elseif not openable then
        engine.output(name .. " isn't something you can open.")
    else
        engine.output(name .. " is already open.")
    end
elseif engine.get_prop(ctx.object, "locked") then
    engine.output(name .. " is locked.")
elseif not openable then
    engine.output(name .. " isn't something you can open.")
else
    engine.output(name .. " is already open.")
end
```

###### On Open

```luau
local name = engine.get_prop(ctx.object, "name") or "it"
if engine.get_prop(ctx.object, "kind") == "door" then
    engine.set_prop(ctx.object, "state", "open")
else
    engine.set_prop(ctx.object, "open", true)
end
engine.output("You open " .. name .. ".")
```

###### After Open

```luau
-- Reveal contents now that the container is open. (The engine's SEE/TOUCH scope
-- also descends into open|transparent containers, so the contents become
-- examinable/takeable automatically.)
-- Exception: enterable containers (e.g. a sarcophagus you can climb inside) do
-- not list their contents to outside observers — the player must enter.
if engine.get_prop(ctx.object, "enterable") then return end
local contents = engine.neighbors(ctx.object, "in", "in")
if #contents > 0 then
    local names = {}
    for _, id in ipairs(contents) do
        table.insert(names, engine.get_prop(id, "name") or "something")
    end
    local name = engine.get_prop(ctx.object, "name") or "It"
    engine.output(name .. " contains: " .. table.concat(names, ", ") .. ".")
end
```
