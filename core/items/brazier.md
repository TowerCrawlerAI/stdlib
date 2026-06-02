# Brazier

### brazier

- kind: light_source
- name: brazier
- aliases: [iron brazier, fire basket]
- lit: false
- portable: false
- brightness: bright

> A heavy iron fire basket on a stone pedestal. Cold ash fills the bowl.

#### Triggers

###### Test Turn On

```luau
-- Guard: must not be already lit; actor must be in the same room as the brazier.
if ctx.self == nil then return false end
if ctx.self.lit == "true" then return false end
return ctx.self.location == tostring(ctx.actor.location)
```

###### InsteadOf Turn On

```luau
engine.output("The brazier is already lit.")
```

###### On Turn On

```luau
engine.set_property(ctx.self.entity_id, "lit", "true")
engine.output("The brazier roars to life, casting dancing shadows across the walls.")
```

###### Test Turn Off

```luau
-- Guard: must be lit.
if ctx.self == nil then return false end
return ctx.self.lit == "true"
```

###### InsteadOf Turn Off

```luau
engine.output("The brazier isn't lit.")
```

###### On Turn Off

```luau
engine.set_property(ctx.self.entity_id, "lit", "false")
engine.output("You douse the brazier. The room plunges toward darkness.")
```
