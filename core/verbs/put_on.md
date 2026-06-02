# put on verb

**Default** kind: verb

### Put On

- kind: verb
- name: put on
- aliases: [put on, putting on]
- noun: required
- noun_scope: inventory
- event: PutOn
- prompt_no_noun: Put on what?

Place a wearable item on yourself (alias for wear).

#### Triggers

###### Test PutOn

```luau
return ctx.noun ~= nil
```

###### InsteadOf PutOn

> You can't put that on.

###### On PutOn

> You put on *noun.name*.

###### After PutOn

###### Report PutOn
