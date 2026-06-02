# kick verb

**Default** kind: verb

### kick

- kind: verb
- name: kick
- aliases: [kicking, boot]
- noun: required
- noun_scope: reachable
- handler: kick_handler
- event: Kick
- prompt_no_noun: Kick what?

Kick an object or creature.

#### Triggers

###### Test Kick

```luau
-- v0.1: per-verb attribute check. When kind chains land (task #9),
-- animate/kickable will be kind-level so this moves there.
if ctx.noun == nil then return false end
return ctx.noun.kickable == "true" or ctx.noun.animate == "true"
```

###### InsteadOf Kick

```luau
engine.output("You can't kick " .. ctx.noun.name .. ".")
```

###### On Kick

> You kick *noun.name*.

###### After Kick

###### Report Kick
