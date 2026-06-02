# sing verb

**Default** kind: verb

### sing

- kind: verb
- name: sing
- aliases: [singing, hum]
- noun: none
- event: Sing

Sing aloud — no mechanical effect.

#### Triggers

###### Test Sing

```luau
if ctx.noun ~= nil then
    engine.output("You can't sing at a specific thing.")
    return false
end
return true
```

###### On Sing

> You sing aloud.
