# Lantern

### lantern

- kind: light_source
- name: lantern
- aliases: [oil lantern, brass lantern]
- lit: false
- portable: true
- brightness: bright

> A brass lantern with a glass chimney. Smells faintly of lamp oil.

#### Triggers

###### Test Turn On

```luau
-- Guard: must not be already lit; must be in actor inventory.
if ctx.self == nil then return false end
if ctx.self.lit == "true" then return false end
return ctx.self.location == tostring(ctx.actor.entity_id)
```

###### InsteadOf Turn On

```luau
engine.output("The lantern is already lit.")
```

###### On Turn On

```luau
engine.set_property(ctx.self.entity_id, "lit", "true")
engine.output("The lantern's wick catches with a soft click. Warm light fills the area.")
```

###### Test Turn Off

```luau
-- Guard: must be lit.
if ctx.self == nil then return false end
return ctx.self.lit == "true"
```

###### InsteadOf Turn Off

```luau
engine.output("The lantern isn't lit.")
```

###### On Turn Off

```luau
engine.set_property(ctx.self.entity_id, "lit", "false")
engine.output("You turn down the wick. The lantern goes dark.")
```
