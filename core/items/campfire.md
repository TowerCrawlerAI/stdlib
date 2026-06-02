# Campfire

### campfire

- kind: light_source
- name: campfire
- aliases: [fire, bonfire, fire pit]
- lit: false
- portable: false
- brightness: bright

> A ring of stones encircling a pile of kindling and charred wood.

#### Triggers

###### Test Turn On

```luau
-- Guard: must not be already lit; actor must be in the same room as the campfire.
if ctx.self == nil then return false end
if ctx.self.lit == "true" then return false end
return ctx.self.location == tostring(ctx.actor.location)
```

###### InsteadOf Turn On

```luau
engine.output("The campfire is already burning.")
```

###### On Turn On

```luau
engine.set_property(ctx.self.entity_id, "lit", "true")
engine.output("You coax the kindling to life. A cheerful fire crackles and pops.")
```

###### Test Turn Off

```luau
-- Guard: must be lit.
if ctx.self == nil then return false end
return ctx.self.lit == "true"
```

###### InsteadOf Turn Off

```luau
engine.output("The campfire isn't lit.")
```

###### On Turn Off

```luau
engine.set_property(ctx.self.entity_id, "lit", "false")
engine.output("You bank the campfire with dirt and ash until it smolders out.")
```
