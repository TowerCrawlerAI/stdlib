# eat verb

**Default** kind: verb

### eat

- kind: verb
- name: eat
- aliases: [eating, consume, devour]
- noun: required
- noun_scope: inventory
- event: Eat
- prompt_no_noun: Eat what?

Eat a food item from inventory.

#### Triggers

###### Test Eat

```luau
-- v0.1: per-verb attribute check. When kind chains and materials land
-- (tasks #9, #24), this lookup will move into the kind/material
-- chain so authors can mark whole kinds (food) edible
-- without touching every verb's Test.
if ctx.noun == nil then return false end
return ctx.noun.edible == "true" or ctx.noun.kind == "food"
```

###### InsteadOf Eat

> You can't eat that.

###### On Eat

> You eat *noun.name*.

###### After Eat

###### Report Eat
