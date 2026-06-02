# drop verb

**Default** kind: verb

### drop

- kind: verb
- name: drop
- aliases: [discard]
- phrases: [put down, leave]
- noun: required
- noun_scope: inventory
- handler: drop_handler
- event: Drop
- events: [on_drop]
- prompt_no_noun: Drop what?

Set a carried object down in the current room.

#### Triggers

###### Test Drop

```luau
if ctx.noun == nil then return false end
-- Item is carried if its location is the actor's entity_id
return ctx.noun.location == tostring(ctx.actor.entity_id)
```

###### InsteadOf Drop

> You're not carrying that.

###### On Drop

> You drop *noun.name*.

###### After Drop

```luau
if ctx.noun == nil or ctx.room == nil then return end
engine.move_actor(ctx.noun.entity_id, ctx.room.entity_id)
```
