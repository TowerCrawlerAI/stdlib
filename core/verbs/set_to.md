# set to verb

**Default** kind: verb

### set_to

- kind: verb
- name: set to
- aliases: [set to, setting to, adjust to, configure to]
- noun: required
- noun_scope: reachable
- second_noun: required
- second_noun_scope: global
- event: SetTo
- prompt_no_noun: Set what?

Set a dial, lever, or variable mechanism to a specific value or position.

#### Triggers

###### Test SetTo

```luau
return ctx.noun ~= nil and ctx.second_noun ~= nil
```

###### InsteadOf SetTo

> You can't set that.

###### On SetTo

> You set *noun.name* to *second_noun.name*.

###### After SetTo

###### Report SetTo
