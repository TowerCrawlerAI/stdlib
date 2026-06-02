# wait verb

**Default** kind: verb

### wait

- kind: verb
- name: wait
- aliases: [z]
- noun: none
- event: Wait
- events: [OnWait]

Pass the current turn without acting. Time advances; floors may use After
Wait triggers on rooms or actors to advance timers or ambient events.

#### Triggers

###### Test Wait

```luau
if ctx.noun ~= nil then
    engine.output("You can't wait at a specific thing.")
    return false
end
return true
```

###### On Wait

> Time passes.
