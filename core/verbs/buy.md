# buy verb

**Default** kind: verb

### buy

- kind: verb
- name: buy
- aliases: [buying, purchase]
- noun: required
- noun_scope: reachable
- handler: buy_handler
- event: Buy
- prompt_no_noun: Buy what?

Buy an item from a vendor in the current room.

#### Triggers

###### Test Buy

```luau
return ctx.noun ~= nil
```

###### On Buy

```luau
engine.output("You buy " .. ctx.noun.name .. ".")
```

###### After Buy

```luau
engine.fire_event("Bought", ctx.noun.id, { actor = ctx.actor.id })
```
