# Torch

### torch

- kind: light_source
- name: torch
- aliases: [brand, firebrand]
- lit: false
- portable: true
- brightness: bright

> A wooden torch wrapped with pitch-soaked cloth. Currently unlit.

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
engine.output("The torch is already lit.")
```

###### On Turn On

```luau
engine.set_property(ctx.self.entity_id, "lit", "true")
engine.output("The torch catches. A warm orange flame illuminates the area.")
```

###### Test Turn Off

```luau
-- Guard: must be lit.
if ctx.self == nil then return false end
return ctx.self.lit == "true"
```

###### InsteadOf Turn Off

```luau
engine.output("The torch isn't lit.")
```

###### On Turn Off

```luau
engine.set_property(ctx.self.entity_id, "lit", "false")
engine.output("You extinguish the torch. Darkness closes in.")
```
