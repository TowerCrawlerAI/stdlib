# lock verb

**Default** kind: verb

### lock

- kind: verb
- name: lock
- aliases: [locking]
- noun: required
- noun_scope: reachable
- event: Lock
- prompt_no_noun: Lock what?

Lock a lockable object such as a door or chest.

#### Triggers

###### Test Lock

```luau
-- v0.1: per-verb attribute check. When kind chains land (task #9),
-- this moves into the kind chain so doors/chests are lockable by default.
if ctx.noun == nil then return false end
if ctx.noun.lockable ~= "true" then return false end
if ctx.noun.locked == "true" then return false end
-- Require the actor to carry the matching key.
local key_id = ctx.noun.key
if key_id == nil then return false end
return engine.actor_has_item(ctx.actor.entity_id, key_id)
```

###### InsteadOf Lock

```luau
if ctx.noun == nil then
    engine.output("Lock what?")
    return
end
if ctx.noun.lockable ~= "true" then
    engine.output(ctx.noun.name .. " has no lock.")
    return
end
if ctx.noun.locked == "true" then
    engine.output(ctx.noun.name .. " is already locked.")
    return
end
engine.output("You don't have the right key.")
```

###### On Lock

```luau
engine.set_property(ctx.noun.entity_id, "locked", "true")
engine.output("You lock " .. ctx.noun.name .. ".")
```

###### After Lock

###### Report Lock
