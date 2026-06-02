# put verb

**Default** kind: verb

### put

- kind: verb
- name: put
- aliases: [place, insert]
- phrases: [put in, put on]
- noun: required
- noun_scope: inventory
- event: Put
- prompt_no_noun: Put what where?

Place a carried item into a container or onto a supporter. `put X in Y`
or `put X on Y`. The target is resolved from the noun tail after the
connector.

#### Triggers

###### Test Put

```luau
return ctx.noun ~= nil and ctx.target ~= nil and (ctx.target.open ~= false)
```

###### InsteadOf Put

> You can't put that there.

###### On Put

> You put *noun.name* in *target.name*.

###### After Put

```luau
engine.set_property(ctx.noun.id, "container", ctx.target.id)
engine.set_property(ctx.noun.id, "at_location", nil)
```
