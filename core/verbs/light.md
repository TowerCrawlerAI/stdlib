# light verb

**Default** kind: verb

### light

- kind: verb
- name: light
- aliases: [kindle, ignite]
- noun: required
- noun_scope: reachable
- event: Light
- prompt_no_noun: Light what?

Light a light source such as a candle, torch, or lantern.

#### Triggers

###### Test Light

```luau
if ctx.noun == nil then return false end
if ctx.noun.lightable ~= "true" and ctx.noun.flammable ~= "true" then return false end
return ctx.noun.lit ~= "true"
```

###### InsteadOf Light

```luau
if ctx.noun == nil or (ctx.noun.lightable ~= "true" and ctx.noun.flammable ~= "true") then
    engine.output("That isn't something you can light.")
elseif ctx.noun.lit == "true" then
    engine.output("It's already lit.")
else
    engine.output("You can't light that.")
end
```

###### On Light

```luau
engine.set_property(ctx.noun.entity_id, "lit", "true")
engine.output("You light the " .. (ctx.noun.name or "object") .. ". It flickers to life.")
```

###### After Light

###### Report Light
