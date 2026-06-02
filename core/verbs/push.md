# push verb

**Default** kind: verb

### push

- kind: verb
- name: push
- aliases: [pushing, shove, nudge]
- noun: required
- noun_scope: reachable
- event: Push
- prompt_no_noun: Push what?

Push an object — may move it, activate it, or trigger a reaction.

#### Triggers

###### Test Push

```luau
-- v0.1: per-verb attribute check. When kind chains land (task #9),
-- pushable will be a kind-level property so this lookup moves there.
if ctx.noun == nil then return false end
return ctx.noun.pushable == "true"
```

###### InsteadOf Push

```luau
engine.output(ctx.noun.name .. " doesn't move.")
```

###### On Push

> You push *noun.name*.

###### After Push

###### Report Push
