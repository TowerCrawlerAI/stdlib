# turn on verb

**Default** kind: verb

### turn_on

- kind: verb
- name: turn on
- aliases: [turn on, turning on, switch on, activate]
- noun: required
- noun_scope: reachable
- event: TurnOn
- prompt_no_noun: Turn on what?

Turn on a device, light source, or mechanism.

#### Triggers

###### Test TurnOn

```luau
return ctx.noun ~= nil
```

###### InsteadOf TurnOn

> You can't turn that on.

###### On TurnOn

> You turn on *noun.name*.

###### After TurnOn

###### Report TurnOn
