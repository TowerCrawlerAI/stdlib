# look under verb

**Default** kind: verb

### Look Under

- kind: verb
- name: look under
- aliases: [look under, looking under, search under]
- noun: required
- noun_scope: reachable
- event: LookUnder
- prompt_no_noun: Look under what?

Look beneath an object for hidden items.

#### Triggers

###### Test LookUnder

```luau
return ctx.object ~= 0
```

###### InsteadOf LookUnder

> You can't look under that.

###### On LookUnder

```luau
local name = engine.get_prop(ctx.object, "name") or "it"
engine.output("You look under " .. name .. ".")
```
