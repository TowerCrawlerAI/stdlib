# wear verb

**Default** kind: verb

### wear

- kind: verb
- name: wear
- aliases: [wearing, put on, don]
- noun: required
- noun_scope: inventory
- event: Wear
- prompt_no_noun: Wear what?

Wear a wearable item from inventory, such as armour or a cloak.

#### Triggers

###### Test Wear

```luau
-- v0.1: per-verb attribute check. When kind chains land (task #9),
-- this moves into the kind chain so armour/clothing are wearable by default.
if ctx.noun == nil then return false end
if ctx.noun.wearable ~= "true" then return false end
return ctx.noun.worn ~= "true"
```

###### InsteadOf Wear

```luau
if ctx.noun == nil then
    engine.output("Wear what?")
    return
end
if ctx.noun.wearable ~= "true" then
    engine.output("You can't wear that.")
    return
end
engine.output("You're already wearing " .. ctx.noun.name .. ".")
```

###### On Wear

```luau
engine.set_property(ctx.noun.entity_id, "worn", "true")
engine.output("You put on " .. ctx.noun.name .. ".")
```

###### After Wear

###### Report Wear
