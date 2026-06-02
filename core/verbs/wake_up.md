# wake up verb

**Default** kind: verb

### Wake Up

- kind: verb
- name: wake up
- aliases: [wake up, waking up, awaken]
- noun: none
- event: WakeUp

Wake yourself from sleep or unconsciousness.

#### Triggers

###### Test WakeUp

```luau
if ctx.noun ~= nil then
    engine.output("You can only wake yourself. (To wake someone else, use: wake <name>)")
    return true
end
return false
```

###### InsteadOf WakeUp

> You are already awake.

###### On WakeUp

###### After WakeUp

###### Report WakeUp
