# taste verb

**Default** kind: verb

### taste

- kind: verb
- name: taste
- aliases: [tasting, lick]
- noun: required
- noun_scope: reachable
- event: Taste
- prompt_no_noun: Taste what?

Taste an object — rarely useful, occasionally interesting.

#### Triggers

###### Test Taste

```luau
return ctx.noun ~= nil
```

###### InsteadOf Taste

> You can't taste that.

###### On Taste

> You taste *noun.name*. Nothing remarkable.

###### After Taste

###### Report Taste
