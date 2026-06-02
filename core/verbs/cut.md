# cut verb

**Default** kind: verb

### cut

- kind: verb
- name: cut
- aliases: [cutting, slice, slash]
- noun: required
- noun_scope: reachable
- handler: cut_handler
- event: Cut
- prompt_no_noun: Cut what?

Cut or slice an object with a sharp implement.

#### Triggers

###### Test Cut

```luau
-- v0.1: per-verb attribute check. When kind chains and materials land
-- (tasks #9, #24), this lookup will move into the kind/material
-- chain so authors can mark whole kinds cuttable
-- without touching every verb's Test.
if ctx.noun == nil then return false end
return ctx.noun.cuttable == "true"
```

###### InsteadOf Cut

> You can't cut that.

###### On Cut

> You cut *noun.name*.

###### After Cut

###### Report Cut
