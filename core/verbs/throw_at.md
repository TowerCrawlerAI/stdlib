# throw at verb

**Default** kind: verb

### Throw At

- kind: verb
- name: throw
- aliases: [throw, throwing, hurl, toss]
- phrases: [throw at, throwing at, hurl at, toss at]
- noun: required
- noun_scope: inventory
- preposition: at
- noun_2: required
- noun_scope_2: reachable
- event: Throw
- prompt_no_noun: Throw what?
- prompt_no_noun_2: Throw it at what?

Throw an item from inventory at a target in the current room.

#### Triggers

###### Test Throw

```luau
return ctx.noun ~= nil and ctx.noun_2 ~= nil
```

###### InsteadOf Throw

```luau
engine.output("You can't throw that.")
```

###### On Throw

```luau
local noun_name = ctx.noun and ctx.noun.name or "it"
local noun_2_name = ctx.noun_2 and ctx.noun_2.name or "the target"
engine.output("You throw " .. noun_name .. " at " .. noun_2_name .. ".")
```

###### After Throw

```luau
-- Per-entity after:Throw and after:Throw At triggers are dispatched
-- automatically by the engine bubble-chain dispatcher (TRIGGERS.md).
-- No manual engine.call_trigger calls needed here.
```

###### Report Throw
