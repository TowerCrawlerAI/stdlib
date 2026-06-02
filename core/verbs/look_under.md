# look under verb

**Default** kind: verb

### Look Under

- kind: verb
- name: look under
- aliases: [look under, looking under, search under]
- noun: required
- noun_scope: reachable
- event: LookUnder
- prompt_no_noun: Look under what?

Look beneath an object for hidden items.

#### Triggers

###### Test LookUnder

```luau
return ctx.noun ~= nil
```

###### InsteadOf LookUnder

> You can't look under that.

###### On LookUnder

> You look under *noun.name*.

###### After LookUnder

###### Report LookUnder
