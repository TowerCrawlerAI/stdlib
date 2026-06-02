# pull verb

**Default** kind: verb

### pull

- kind: verb
- name: pull
- aliases: [pulling, yank, tug]
- noun: required
- noun_scope: reachable
- event: Pull
- prompt_no_noun: Pull what?

Pull an object — may move it, open a mechanism, or trigger a reaction.

#### Triggers

###### Test Pull

```luau
-- v0.1: per-verb attribute check. When kind chains land (task #9),
-- pullable will be a kind-level property so this lookup moves there.
if ctx.noun == nil then return false end
return ctx.noun.pullable == "true"
```

###### InsteadOf Pull

```luau
engine.output(ctx.noun.name .. " doesn't budge.")
```

###### On Pull

> You pull *noun.name*.

###### After Pull

###### Report Pull
