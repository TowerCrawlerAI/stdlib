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
-- v0.1: per-verb attribute check. When kind chains and materials land
-- (tasks #9, #24), this lookup will move into the kind/material
-- chain so authors can mark whole kinds (container, door) openable
-- without touching every verb's Test.
if ctx.noun == nil then return false end
local openable = ctx.noun.openable == "true" or ctx.noun.kind == "container" or ctx.noun.kind == "door"
if not openable then return false end
-- Doors use state-based logic; containers use the legacy open/locked properties.
if ctx.noun.kind == "door" then
    local state = ctx.noun.state or "closed"
    if state == "locked" then return false end
    if state == "open" then return false end
else
    if ctx.noun.locked == "true" then return false end
    if ctx.noun.open == "true" then return false end
end
return true
```

###### InsteadOf Open

```luau
local openable = ctx.noun.openable == "true" or ctx.noun.kind == "container" or ctx.noun.kind == "door"
if ctx.noun.kind == "door" then
    local state = ctx.noun.state or "closed"
    if state == "locked" then
        engine.output(ctx.noun.name .. " is locked.")
    elseif state == "open" then
        engine.output(ctx.noun.name .. " is already open.")
    elseif not openable then
        engine.output(ctx.noun.name .. " isn't something you can open.")
    else
        engine.output(ctx.noun.name .. " is already open.")
    end
elseif ctx.noun.locked == "true" then
    engine.output(ctx.noun.name .. " is locked.")
elseif not openable then
    engine.output(ctx.noun.name .. " isn't something you can open.")
else
    engine.output(ctx.noun.name .. " is already open.")
end
```

###### On Open

```luau
-- Doors use state property; containers use the legacy open property.
if ctx.noun.kind == "door" then
    engine.set_property(ctx.noun.entity_id, "state", "open")
else
    engine.set_property(ctx.noun.entity_id, "open", "true")
end
engine.output("You open " .. ctx.noun.name .. ".")
```

###### After Open

```luau
-- Reveal contents now that the container is open.
-- Exception: enterable containers (e.g. a sarcophagus you can climb inside)
-- do not list their contents to outside observers — the player must enter
-- to discover what's there. This is the correct semantic for any container
-- large enough to occupy (wagon, wardrobe, large chest, etc.).
if ctx.noun.enterable == "true" then
    return
end
local contents = engine.entities_in(ctx.noun.entity_id)
if #contents > 0 then
    local names = {}
    for _, item in ipairs(contents) do
        table.insert(names, item.name or "something")
    end
    engine.output(ctx.noun.name .. " contains: " .. table.concat(names, ", ") .. ".")
end
```
