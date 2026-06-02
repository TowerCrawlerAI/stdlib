# unlock verb

**Default** kind: verb

### unlock

- kind: verb
- name: unlock
- aliases: [unlocking]
- noun: required
- noun_scope: reachable
- event: Unlock
- prompt_no_noun: Unlock what?

Unlock a locked object using a key or combination.

#### Triggers

###### Test Unlock

```luau
-- v0.1: per-verb attribute check. When kind chains land (task #9),
-- this moves into the kind chain so doors/chests are lockable by default.
if ctx.noun == nil then return false end
if ctx.noun.lockable ~= "true" then return false end
if ctx.noun.locked ~= "true" then return false end
-- Require the actor to carry the matching key.
local key_id = ctx.noun.key
if key_id == nil then return false end
return engine.actor_has_item(ctx.actor.entity_id, key_id)
```

###### InsteadOf Unlock

```luau
if ctx.noun == nil then
    engine.output("Unlock what?")
    return
end
if ctx.noun.lockable ~= "true" then
    engine.output(ctx.noun.name .. " has no lock.")
    return
end
if ctx.noun.locked ~= "true" then
    engine.output(ctx.noun.name .. " isn't locked.")
    return
end
engine.output("You don't have the right key.")
```

###### On Unlock

```luau
engine.set_property(ctx.noun.entity_id, "locked", "false")
engine.output("You unlock " .. ctx.noun.name .. ".")
```

###### After Unlock

###### Report Unlock
