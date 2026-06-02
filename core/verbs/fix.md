# fix verb

**Default** kind: verb

### fix

- kind: verb
- name: fix
- aliases: [fixing, repair, mend]
- noun: required
- noun_scope: reachable
- event: Fix
- prompt_no_noun: Fix what?

Attempt to repair a broken object.

#### Triggers

###### Test Fix

```luau
-- v0.1: per-verb attribute check. When kind chains and materials land
-- (tasks #9, #24), this lookup will move into the kind/material
-- chain so authors can mark whole kinds repairable
-- without touching every verb's Test.
if ctx.noun == nil then return false end
return ctx.noun.broken == "true"
```

###### InsteadOf Fix

```luau
if ctx.noun == nil then
    engine.output("Fix what?")
    return
end
if ctx.noun.broken ~= "true" then
    engine.output(ctx.noun.name .. " doesn't need fixing.")
    return
end
engine.output("You can't fix that.")
```

###### On Fix

```luau
engine.set_property(ctx.noun.entity_id, "broken", "false")
engine.output("You fix " .. ctx.noun.name .. ".")
```

###### After Fix

###### Report Fix
