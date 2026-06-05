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
-- Graph ctx: ctx.object node id; props are real values. A filled vessel holds a
-- contents node id; a direct source is drinkable / kind=="liquid".
if ctx.object == 0 then return false end
if engine.get_prop(ctx.object, "filled") then return true end
return engine.get_prop(ctx.object, "drinkable")
    or engine.get_prop(ctx.object, "kind") == "liquid"
```

###### InsteadOf Drink

```luau
local name = engine.get_prop(ctx.object, "name") or "it"
if engine.get_prop(ctx.object, "kind") == "container"
   and not engine.get_prop(ctx.object, "filled") then
    engine.output("The " .. name .. " is empty.")
else
    engine.output("That's not something you can drink.")
end
```

###### On Drink

```luau
if ctx.object == 0 then return end
local name = engine.get_prop(ctx.object, "name") or "it"
-- Vessel path: consume contents (a node id stored by `fill`) and empty it.
if engine.get_prop(ctx.object, "filled") then
    local substance = engine.get_prop(ctx.object, "contents")  -- node id, or nil
    local sname = (substance and engine.get_prop(substance, "name")) or "liquid"
    engine.output("You drink from the " .. name .. ". The " .. sname
        .. " is shockingly cold and faintly sweet.")
    if substance and engine.get_prop(substance, "effect") then
        -- v0.2 condition (protection_from_frightened) auto-succeeds as flavor;
        -- engine.apply_effect lands with the condition system (#35).
        engine.output("A calm clarity settles over you. You feel steadied against fear.")
    end
    engine.set_prop(ctx.object, "filled", false)
    engine.set_prop(ctx.object, "contents", 0)
    return
end
-- Direct-source path: kneel and drink at the source.
engine.output("You kneel and drink directly from the " .. name
    .. ". The water is shockingly cold and faintly sweet.")
if engine.get_prop(ctx.object, "effect") then
    engine.output("A calm clarity settles over you. You feel steadied against fear.")
end
```

###### After Drink

###### Report Drink
