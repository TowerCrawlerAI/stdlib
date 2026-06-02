# rub verb

**Default** kind: verb

### rub

- kind: verb
- name: rub
- aliases: [rubbing, polish, clean]
- noun: required
- noun_scope: reachable
- event: Rub
- prompt_no_noun: Rub what?

Rub an object to clean it, activate it, or trigger a special effect.

#### Triggers

###### Test Rub

```luau
-- v0.1: per-verb attribute check. When kind chains land (task #9),
-- rubbable will be a kind-level property so this lookup moves there.
if ctx.noun == nil then return false end
return ctx.noun.rubbable == "true"
```

###### InsteadOf Rub

```luau
-- Graceful no-op: rubbing is non-destructive, so "nothing happens" is
-- better authoring than a hard rejection.
engine.output("You rub " .. ctx.noun.name .. ". Nothing happens.")
```

###### On Rub

> You rub *noun.name*.

###### After Rub

###### Report Rub
