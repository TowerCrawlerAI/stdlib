# blow verb

**Default** kind: verb

### blow

- kind: verb
- name: blow
- aliases: [blowing, blow on]
- noun: required
- noun_scope: reachable
- handler: blow_handler
- event: Blow
- prompt_no_noun: Blow what?

Blow on or into an object (e.g., candles, horns, pipes).

#### Triggers

###### Test Blow

```luau
-- v0.1: per-verb attribute check. When kind chains and materials land
-- (tasks #9, #24), this lookup will move into the kind/material
-- chain so authors can mark whole kinds (instrument) blowable
-- without touching every verb's Test.
if ctx.noun == nil then return false end
return ctx.noun.blowable == "true" or ctx.noun.kind == "instrument"
```

###### InsteadOf Blow

> Nothing happens.

###### On Blow

> You blow on *noun.name*.

###### After Blow

###### Report Blow
