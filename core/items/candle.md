# Candle

### candle

- kind: light_source
- name: candle
- aliases: [taper, wax candle]
- lit: false
- portable: true
- brightness: dim

> A short wax candle in a simple holder.

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
engine.output("The candle is already lit.")
```

###### On Turn On

```luau
engine.set_property(ctx.self.entity_id, "lit", "true")
engine.output("You touch flame to wick. The candle gutters, then settles to a small steady flame.")
```

###### Test Turn Off

```luau
-- Guard: must be lit.
if ctx.self == nil then return false end
return ctx.self.lit == "true"
```

###### InsteadOf Turn Off

```luau
engine.output("The candle isn't lit.")
```

###### On Turn Off

```luau
engine.set_property(ctx.self.entity_id, "lit", "false")
engine.output("You pinch out the flame. A wisp of smoke curls upward.")
```
