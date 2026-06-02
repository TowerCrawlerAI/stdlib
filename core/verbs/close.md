# close verb

**Default** kind: verb

### close

- kind: verb
- name: close
- aliases: [shut]
- noun: required
- noun_scope: reachable
- noun_kind: container
- event: Close
- events: [on_close]
- prompt_no_noun: Close what?

Close an open door, chest, or container. Fails if already closed or not openable.

#### Triggers

###### Test Close

```luau
-- v0.1: per-verb attribute check. When kind chains and materials land
-- (tasks #9, #24), this lookup will move into the kind/material
-- chain so authors can mark whole kinds (container, door) openable
-- without touching every verb's Test.
if ctx.noun == nil then return false end
local openable = ctx.noun.openable == "true" or ctx.noun.kind == "container" or ctx.noun.kind == "door"
if not openable then return false end
-- Doors use state-based logic; containers use the legacy open property.
if ctx.noun.kind == "door" then
    local state = ctx.noun.state or "closed"
    if state ~= "open" then return false end
else
    if ctx.noun.open ~= "true" then return false end
end
return true
```

###### InsteadOf Close

```luau
local openable = ctx.noun.openable == "true" or ctx.noun.kind == "container" or ctx.noun.kind == "door"
if not openable then
    engine.output(ctx.noun.name .. " isn't something you can close.")
else
    engine.output(ctx.noun.name .. " is already closed.")
end
```

###### On Close

```luau
-- Doors use state property; containers use the legacy open property.
if ctx.noun.kind == "door" then
    engine.set_property(ctx.noun.entity_id, "state", "closed")
else
    engine.set_property(ctx.noun.entity_id, "open", "false")
end
engine.output("You close " .. ctx.noun.name .. ".")
```
