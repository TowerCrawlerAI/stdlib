# remove verb

**Default** kind: verb

### remove

- kind: verb
- name: remove
- aliases: [removing, take off, doff]
- noun: required
- noun_scope: inventory
- event: Remove
- prompt_no_noun: Remove what?

Remove a worn item and return it to inventory.

#### Triggers

###### Test Remove

```luau
-- v0.1: per-verb attribute check. Only items currently worn by the actor
-- can be removed.
if ctx.noun == nil then return false end
return ctx.noun.worn == "true"
```

###### InsteadOf Remove

```luau
if ctx.noun == nil then
    engine.output("Remove what?")
    return
end
engine.output("You aren't wearing " .. ctx.noun.name .. ".")
```

###### On Remove

```luau
engine.set_property(ctx.noun.entity_id, "worn", "false")
engine.output("You take off " .. ctx.noun.name .. ".")
```

###### After Remove

###### Report Remove
