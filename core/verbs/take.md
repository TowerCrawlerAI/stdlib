# take verb

**Default** kind: verb

### take

- kind: verb
- name: take
- aliases: [get, grab]
- phrases: [pick up]
- noun: required
- noun_scope: reachable
- noun_kind: object
- handler: take_handler
- event: Take
- events: [on_take]
- prompt_no_noun: Take what?

Pick up an object from the current room and add it to your inventory.
Refuses non-portable entities via the `InsteadOf Take` stage.

#### Triggers

###### Test Take

```luau
if ctx.noun == nil then return false end
if ctx.noun.kind == "scenery" then return false end
if ctx.noun.portable == "false" then return false end
if not engine.can_touch(ctx.actor.entity_id, ctx.noun.entity_id) then return false end
return true
```

###### InsteadOf Take

> You can't take that.

###### Before Take

###### On Take

```luau
if ctx.noun == nil then
    engine.output("Take what?")
    return
end
engine.output("You pick up " .. ctx.noun.name .. ".")
```

###### After Take

```luau
if ctx.noun == nil then return end
engine.move_actor(ctx.noun.entity_id, ctx.actor.entity_id)
```

###### Report Take
