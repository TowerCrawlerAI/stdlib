# burn verb

**Default** kind: verb

### burn

- kind: verb
- name: burn
- aliases: [burning, ignite, set fire to]
- noun: required
- noun_scope: reachable
- handler: burn_handler
- event: Burn
- prompt_no_noun: Burn what?

Set fire to a flammable object.

#### Triggers

###### Test Burn

```luau
-- v0.1: per-verb attribute check. When kind chains and materials land
-- (tasks #9, #24), this lookup will move into the kind/material
-- chain so authors can mark whole materials flammable
-- without touching every verb's Test.
if ctx.noun == nil then return false end
return ctx.noun.flammable == "true"
```

###### InsteadOf Burn

> That isn't flammable.

###### On Burn

> You set fire to *noun.name*.

###### After Burn

###### Report Burn
