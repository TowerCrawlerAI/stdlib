# climb verb

**Default** kind: verb

### climb

- kind: verb
- name: climb
- aliases: [climbing, scale, clamber up]
- noun: optional
- noun_scope: reachable
- handler: climb_handler
- event: Climb
- prompt_no_noun: Climb what?

Climb an object, structure, or surface.

#### Triggers

###### Test Climb

```luau
-- v0.1: per-verb attribute check. When kind chains and materials land
-- (tasks #9, #24), this lookup will move into the kind/material
-- chain so authors can mark whole kinds (climbable) without touching
-- every verb's Test. Bare 'climb' without a noun uses the go-up alias.
if ctx.noun == nil then return true end
return ctx.noun.climbable == "true"
```

###### InsteadOf Climb

> There's nothing to climb there.

###### On Climb

> You climb.

###### After Climb

###### Report Climb
