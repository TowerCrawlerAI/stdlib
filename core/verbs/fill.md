# fill verb

**Default** kind: verb

### fill

- kind: verb
- name: fill
- aliases: [pour, top up]
- phrases: [fill with, fill up, fill up with]
- noun: required
- noun_scope: inventory
- noun_2: required
- noun_scope_2: reachable
- event: Fill
- prompt_no_noun: Fill what?

Fill a portable container from a liquid source. `fill X with Y` where X is
the container in your inventory and Y is a liquid source reachable in the
current room. The source must be marked `fillable_source: true`. Sets
`filled: true` and `contents` on the container.

#### Triggers

###### Test Fill

```luau
if ctx.noun == nil then return false end
if ctx.noun_2 == nil then return false end
-- Vessel must be a container (or at least portable and open).
if ctx.noun.kind ~= "container" and ctx.noun.fillable_vessel ~= "true" then
    return false
end
-- Vessel must not already be full.
if ctx.noun.filled == "true" then return false end
-- Source must be a fillable liquid source.
if ctx.noun_2.fillable_source ~= "true" and ctx.noun_2.kind ~= "liquid" then
    return false
end
return true
```

###### InsteadOf Fill

```luau
if ctx.noun == nil then
    engine.output("Fill what?")
    return
end
if ctx.noun_2 == nil then
    engine.output("Fill it with what?")
    return
end
if ctx.noun.filled == "true" then
    engine.output("The " .. ctx.noun.name .. " is already full.")
    return
end
if ctx.noun.kind ~= "container" and ctx.noun.fillable_vessel ~= "true" then
    engine.output("You can't fill the " .. ctx.noun.name .. ".")
    return
end
if ctx.noun_2.fillable_source ~= "true" and ctx.noun_2.kind ~= "liquid" then
    engine.output("You can't get any of the " .. ctx.noun_2.name .. " into the " .. ctx.noun.name .. ".")
    return
end
```

###### On Fill

```luau
-- Determine what substance the source contains (or use source itself).
local substance_id = ctx.noun_2.contents or ctx.noun_2.id
engine.set_property(ctx.noun.entity_id, "filled", "true")
engine.set_property(ctx.noun.entity_id, "contents", substance_id)
engine.output("You fill the " .. ctx.noun.name .. " from the " .. ctx.noun_2.name .. ". The water is shockingly cold.")
```

###### After Fill

###### Report Fill
