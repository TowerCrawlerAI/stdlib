# bite verb

**Default** kind: verb

### bite

- kind: verb
- name: bite
- aliases: [biting, gnaw]
- noun: required
- noun_scope: reachable
- handler: bite_handler
- event: Bite
- prompt_no_noun: Bite what?

Bite an object or creature — rarely useful, sometimes funny.

#### Triggers

###### Test Bite

```luau
-- v0.1: per-verb attribute check. When kind chains and materials land
-- (tasks #9, #24), this lookup will move into the kind/material
-- chain so authors can mark whole kinds (food) edible/bitable
-- without touching every verb's Test.
if ctx.noun == nil then return false end
return ctx.noun.edible == "true" or ctx.noun.kind == "food" or ctx.noun.bitable == "true"
```

###### InsteadOf Bite

> Biting that would accomplish nothing.

###### On Bite

> You bite *noun.name*.

###### After Bite

###### Report Bite
