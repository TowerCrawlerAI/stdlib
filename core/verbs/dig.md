# dig verb

**Default** kind: verb

### dig

- kind: verb
- name: dig
- aliases: [digging, excavate]
- noun: optional
- noun_scope: reachable
- handler: dig_handler
- event: Dig
- prompt_no_noun: Dig what?

Dig in soft ground or a container of loose material.

#### Triggers

###### Test Dig

```luau
-- v0.1: per-verb attribute check. When kind chains and materials land
-- (tasks #9, #24), this lookup will move into the kind/material
-- chain so authors can mark whole kinds (soil) diggable
-- without touching every verb's Test.
if ctx.noun == nil then return false end
return ctx.noun.diggable == "true" or ctx.noun.kind == "soil"
```

###### InsteadOf Dig

> You have nothing to dig with.

###### On Dig

> You dig.

###### After Dig

###### Report Dig
