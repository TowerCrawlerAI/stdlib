# wave verb

**Default** kind: verb

### wave

- kind: verb
- name: wave
- aliases: [waving]
- noun: none
- event: Wave

Wave — a social gesture with no mechanical effect by default.

#### Triggers

###### Test Wave

```luau
if ctx.noun ~= nil then
    engine.output("Wave at what? (Try: wave at <someone>)")
    return false
end
return true
```

###### On Wave

> You wave.
