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
-- Graph ctx: ctx.object = vessel (carried), ctx.object2 = source (reachable).
if ctx.object == 0 or ctx.object2 == 0 then return false end
if engine.get_prop(ctx.object, "kind") ~= "container"
   and not engine.get_prop(ctx.object, "fillable_vessel") then
    return false
end
if engine.get_prop(ctx.object, "filled") then return false end
if not engine.get_prop(ctx.object2, "fillable_source")
   and engine.get_prop(ctx.object2, "kind") ~= "liquid" then
    return false
end
return true
```

###### InsteadOf Fill

```luau
local cname = engine.get_prop(ctx.object, "name") or "it"
if ctx.object == 0 then
    engine.output("Fill what?")
elseif ctx.object2 == 0 then
    engine.output("Fill it with what?")
elseif engine.get_prop(ctx.object, "filled") then
    engine.output("The " .. cname .. " is already full.")
elseif engine.get_prop(ctx.object, "kind") ~= "container"
       and not engine.get_prop(ctx.object, "fillable_vessel") then
    engine.output("You can't fill the " .. cname .. ".")
else
    local sname = engine.get_prop(ctx.object2, "name") or "that"
    engine.output("You can't get any of the " .. sname .. " into the " .. cname .. ".")
end
```

###### On Fill

```luau
-- Store the source node id as the vessel's contents (drink reads its effect).
local cname = engine.get_prop(ctx.object, "name") or "vessel"
local sname = engine.get_prop(ctx.object2, "name") or "source"
engine.set_prop(ctx.object, "filled", true)
engine.set_prop(ctx.object, "contents", ctx.object2)
engine.output("You fill the " .. cname .. " from the " .. sname .. ". The water is shockingly cold.")
```

###### After Fill

###### Report Fill
