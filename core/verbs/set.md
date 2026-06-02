# set verb

**Default** kind: verb

### set

- kind: verb
- name: set
- aliases: [setting, place, position]
- noun: required
- noun_scope: inventory
- event: Set
- prompt_no_noun: Set what?

Set an object down or in a specific orientation.

#### Triggers

###### Test Set

```luau
-- v0.1: "set X down" requires the item to be in the actor's inventory.
-- Note: noun_scope: inventory means the resolver only surfaces items the
-- actor carries, so this check is belt-and-suspenders. The noun_scope
-- guarantees a reachable item before Test fires; Test guards the case
-- where the dispatcher is called directly (e.g. from Luau rules).
if ctx.noun == nil then return false end
-- "set X down" requires the item to be in the actor's inventory.
return engine.actor_has_item(ctx.actor.entity_id, ctx.noun.entity_id)
```

###### InsteadOf Set

```luau
if ctx.noun == nil then
    engine.output("Set what down?")
    return
end
engine.output("You aren't carrying " .. ctx.noun.name .. ".")
```

###### On Set

```luau
engine.transfer_item(ctx.noun.entity_id, ctx.actor.entity_id, ctx.actor.location)
engine.output("You set down " .. ctx.noun.name .. ".")
```

###### After Set

###### Report Set
