# wave at verb

**Default** kind: verb

### Wave At

- kind: verb
- name: wave at
- aliases: [wave at, waving at, beckon]
- noun: required
- noun_scope: reachable
- event: WaveAt
- prompt_no_noun: Wave at what?

Wave at a creature or person to get their attention.

#### Triggers

###### Test WaveAt

```luau
return ctx.noun ~= nil
```

###### InsteadOf WaveAt

```luau
engine.output("You can't wave at that.")
```

###### On WaveAt

```luau
local noun_name = (ctx.noun and ctx.noun.name) or "them"
engine.output("You wave at " .. noun_name .. ".")
```

###### After WaveAt

###### Report WaveAt
