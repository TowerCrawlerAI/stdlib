# drink verb

**Default** kind: verb

### drink

- kind: verb
- name: drink
- aliases: [drinking, sip, quaff]
- noun: required
- noun_scope: reachable
- event: Drink
- prompt_no_noun: Drink what?

Drink a liquid from a container or source. If the noun is a filled container,
consumes the contents and clears the container. If the noun is a liquid source
with `drinkable: true`, drinks directly from the source (forgiving path — player
may kneel and drink without a vessel).

#### Triggers

###### Test Drink

```luau
-- v0.1: per-verb attribute check. When kind chains and materials land
-- (tasks #9, #24), this lookup will move into the kind/material
-- chain so authors can mark whole kinds (liquid) drinkable
-- without touching every verb's Test.
if ctx.noun == nil then return false end
-- Filled vessel: drinkable if it holds a drinkable substance.
if ctx.noun.filled == "true" and ctx.noun.contents ~= nil then
    return true
end
return ctx.noun.drinkable == "true" or ctx.noun.kind == "liquid"
```

###### InsteadOf Drink

```luau
if ctx.noun == nil then
    engine.output("Drink what?")
    return
end
if ctx.noun.kind == "container" and ctx.noun.filled ~= "true" then
    engine.output("The " .. ctx.noun.name .. " is empty.")
    return
end
engine.output("That's not something you can drink.")
```

###### On Drink

```luau
if ctx.noun == nil then return end
-- Vessel path: consume contents and empty the vessel.
if ctx.noun.filled == "true" and ctx.noun.contents ~= nil then
    local substance_id = ctx.noun.contents
    local substance = engine.query_entity_by_id(substance_id)
    local substance_name = (substance and substance.name) or substance_id
    engine.output("You drink from the " .. ctx.noun.name .. ". The " .. substance_name .. " is shockingly cold and faintly sweet.")
    -- Apply effect if the substance carries one.
    if substance ~= nil and substance.effect ~= nil then
        -- v0.2 behavior (no-op in v0.1): engine.apply_effect is a v0.2 binding.
        -- TODO(#35): wire engine.apply_effect when buff system lands.
        engine.output("A calm clarity settles over you. You feel steadied against fear.")
    end
    engine.set_property(ctx.noun.entity_id, "filled", "false")
    engine.set_property(ctx.noun.entity_id, "contents", nil)
    return
end
-- Direct-source path: drink at the source.
engine.output("You kneel and drink directly from the " .. ctx.noun.name .. ". The water is shockingly cold and faintly sweet.")
if ctx.noun.effect ~= nil then
    -- v0.2 behavior (no-op in v0.1): engine.apply_effect is a v0.2 binding.
    -- TODO(#35): wire engine.apply_effect when buff system lands.
    engine.output("A calm clarity settles over you. You feel steadied against fear.")
end
```

###### After Drink

###### Report Drink
