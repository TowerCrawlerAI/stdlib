# listen verb

**Default** kind: verb

### listen

- kind: verb
- name: listen
- aliases: [listening, hear]
- noun: none
- event: Listen

Listen to the ambient sounds of the current location.

#### Triggers

###### Test Listen

```luau
if ctx.noun ~= nil then
    engine.output("Listen to what? (Try: listen to <something>)")
    return false
end
return true
```

###### On Listen

> You listen carefully.
