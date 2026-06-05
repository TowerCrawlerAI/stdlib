# touch verb

**Default** kind: verb

### touch

- kind: verb
- name: touch
- aliases: [touching, feel, pat]
- noun: required
- noun_scope: reachable
- event: Touch
- prompt_no_noun: Touch what?

Touch or feel an object, often revealing its texture or temperature.

#### Triggers

###### Test Touch

```luau
if ctx.object == 0 then return false end
return engine.can_touch(ctx.actor, ctx.object)
```

###### InsteadOf Touch

> You can't touch that.

###### On Touch

```luau
-- engine.call_trigger has no graph equivalent yet; fall back to default prose.
-- (Per-object touch reactions will be revisited when the event/trigger graph model lands.)
local name = engine.get_prop(ctx.object, "name") or "it"
engine.output("You touch " .. name .. ". Nothing happens.")
```
