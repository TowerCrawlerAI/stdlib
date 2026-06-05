# taste verb

**Default** kind: verb

### taste

- kind: verb
- name: taste
- aliases: [tasting, lick]
- noun: required
- noun_scope: reachable
- event: Taste
- prompt_no_noun: Taste what?

Taste an object — rarely useful, occasionally interesting.

#### Triggers

###### Test Taste

```luau
return ctx.object ~= 0
```

###### InsteadOf Taste

> You can't taste that.

###### On Taste

```luau
local name = engine.get_prop(ctx.object, "name") or "it"
engine.output("You taste " .. name .. ". Nothing remarkable.")
```
