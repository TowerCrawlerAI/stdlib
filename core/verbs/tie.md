# tie verb

**Default** kind: verb

### tie

- kind: verb
- name: tie
- aliases: [tying, bind, fasten]
- noun: required
- noun_scope: reachable
- event: Tie
- prompt_no_noun: Tie what?

Tie or bind an object with rope or cord.

#### Triggers

###### Test Tie

```luau
-- v0.1: per-verb attribute check. When kind chains land (task #9),
-- tieable will be a kind-level property so this lookup moves there.
-- Also requires the actor to be carrying something rope-like.
if ctx.noun == nil then return false end
if ctx.noun.tieable ~= "true" then return false end
-- Check actor inventory for a rope or cord.
local has_rope = false
if ctx.actor ~= nil and ctx.actor.inventory ~= nil then
    for _, item_id in ipairs(ctx.actor.inventory) do
        local item = engine.query_entity_by_id(item_id)
        if item ~= nil and (item.rope == "true" or item.kind == "rope") then
            has_rope = true
            break
        end
    end
end
return has_rope
```

###### InsteadOf Tie

```luau
if ctx.noun.tieable ~= "true" then
    engine.output("You can't tie " .. ctx.noun.name .. ".")
else
    engine.output("You don't have any rope.")
end
```

###### On Tie

> You tie *noun.name*.

###### After Tie

###### Report Tie
