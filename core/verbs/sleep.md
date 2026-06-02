# sleep verb

**Default** kind: verb

### sleep

- kind: verb
- name: sleep
- aliases: [sleeping, rest, nap, lie down]
- noun: none
- event: Sleep

Sleep — only meaningful if the floor defines a rest mechanic.

#### Triggers

###### Test Sleep

```luau
if ctx.noun ~= nil then
    engine.output("You can't sleep at a specific thing.")
    return true
end
return false
```

###### InsteadOf Sleep

> You feel drowsy but this is not the time for sleep.

###### On Sleep

###### After Sleep

###### Report Sleep
