# turn off verb

**Default** kind: verb

### turn_off

- kind: verb
- name: turn off
- aliases: [turn off, turning off, switch off, deactivate]
- noun: required
- noun_scope: reachable
- event: TurnOff
- prompt_no_noun: Turn off what?

Turn off a device, light source, or mechanism.

#### Triggers

###### Test TurnOff

```luau
return ctx.noun ~= nil
```

###### InsteadOf TurnOff

> You can't turn that off.

###### On TurnOff

> You turn off *noun.name*.

###### After TurnOff

###### Report TurnOff
