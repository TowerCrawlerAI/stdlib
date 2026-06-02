# smell verb

**Default** kind: verb

### smell

- kind: verb
- name: smell
- aliases: [smelling, sniff, inhale]
- noun: optional
- noun_scope: reachable
- event: Smell
- prompt_no_noun: Smell what?

Smell an object or the ambient air of the current location.

#### Triggers

###### Test Smell

```luau
return true
```

###### InsteadOf Smell

> You can't smell that.

###### On Smell

```luau
if ctx.noun then
    engine.output("You smell " .. (ctx.noun.name or "it") .. ". Nothing remarkable.")
else
    engine.output("You sniff the air. Nothing unusual.")
end
```

###### After Smell

###### Report Smell
