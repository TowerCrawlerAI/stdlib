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
if ctx.noun == nil then return false end
return engine.can_touch(ctx.actor.entity_id, ctx.noun.entity_id)
```

###### InsteadOf Touch

> You can't touch that.

###### On Touch

```luau
if ctx.noun == nil then
    engine.output("Touch what?")
    return
end
-- 1. Call noun-level on:Touch trigger (sub-entity or standalone entity).
-- 2. If not found, call room-level on:Touch trigger (for room-wide reactions
--    like a spring rib that wakes a guardian).
-- 3. Fall back to default "Nothing happens" prose.
local handled = engine.call_trigger(ctx.noun.entity_id, "on:Touch", ctx)
if not handled and ctx.room ~= nil then
    handled = engine.call_trigger(ctx.room.entity_id, "on:Touch", ctx)
end
if not handled then
    engine.output("You touch " .. (ctx.noun.name or "it") .. ". Nothing happens.")
end
```

###### After Touch

###### Report Touch
