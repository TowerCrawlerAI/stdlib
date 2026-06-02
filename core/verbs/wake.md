# wake verb

**Default** kind: verb

### wake

- kind: verb
- name: wake
- aliases: [waking]
- noun: optional
- noun_scope: reachable
- event: Wake
- prompt_no_noun: Wake what?

Wake a sleeping creature, or wake yourself from a dream.

#### Triggers

###### Test Wake

```luau
-- No noun: reflexive wake (wake yourself) — always legal.
if ctx.noun == nil then return true end
if ctx.noun.animate ~= "true" then return false end
return ctx.noun.sleeping == "true"
```

###### InsteadOf Wake

```luau
if ctx.noun == nil then
    -- Reflexive path should never reach InsteadOf (Test returns true), but
    -- handle it safely anyway.
    engine.output("You are already awake.")
    return
end
if ctx.noun.animate ~= "true" then
    engine.output("You can't wake that.")
    return
end
engine.output(ctx.noun.name .. " isn't asleep.")
```

###### On Wake

```luau
if ctx.noun then
    engine.set_property(ctx.noun.entity_id, "sleeping", "false")
    engine.output("You wake " .. ctx.noun.name .. ".")
else
    engine.output("You wake yourself.")
end
```

###### After Wake

###### Report Wake
