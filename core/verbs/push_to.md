# push to verb

**Default** kind: verb

### Push To

- kind: verb
- name: push
- aliases: [pushing, shove, slide, move]
- phrases: [push to, pushing to, shove to, move to, slide to]
- noun: required
- noun_scope: reachable
- preposition: to
- noun_2: required
- noun_scope_2: reachable
- event: PushTo
- prompt_no_noun: Push what?
- prompt_no_noun_2: Push it to where?

Push an object to a specific location.

#### Triggers

###### Test PushTo

```luau
if ctx.noun == nil then return false end
if ctx.noun_2 == nil then return false end
return ctx.noun.pushable == "true"
```

###### InsteadOf PushTo

```luau
if ctx.noun == nil then
    engine.output("Push what?")
elseif ctx.noun_2 == nil then
    engine.output("Push it to where?")
else
    engine.output("You can't push that there.")
end
```

###### On PushTo

```luau
local noun_name = ctx.noun and ctx.noun.name or "it"
local noun_2_name = ctx.noun_2 and ctx.noun_2.name or "there"
engine.output("You push " .. noun_name .. " toward " .. noun_2_name .. ".")
```

###### After PushTo

###### Report PushTo
