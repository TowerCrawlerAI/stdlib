# think verb

**Default** kind: verb

### think

- kind: verb
- name: think
- aliases: [thinking, ponder, muse]
- noun: none
- event: Think

Pause to think — no game effect, but useful for journaling.

#### Triggers

###### Test Think

```luau
if ctx.noun ~= nil then
    engine.output("You can't think at a specific thing.")
    return false
end
return true
```

###### On Think

> You pause to gather your thoughts.
