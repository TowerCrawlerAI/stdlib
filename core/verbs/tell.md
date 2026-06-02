# tell verb

**Default** kind: verb

### tell

- kind: verb
- name: tell
- aliases: [telling]
- noun: required
- noun_scope: reachable
- noun_kind: npc
- preposition: about
- noun_2: required
- noun_scope_2: topic
- event: Tell
- prompt_no_noun: Tell whom?
- prompt_no_noun_2: Tell them about what?

Tell an NPC about a topic.

#### Triggers

###### Test Tell

```luau
if ctx.noun == nil then return false end
if ctx.noun_2 == nil then return false end
return true
```

###### InsteadOf Tell

```luau
if ctx.noun == nil then
    engine.output("Tell whom?")
elseif ctx.noun_2 == nil then
    engine.output("Tell them about what?")
else
    local npc_name = (ctx.noun and ctx.noun.name) or "They"
    engine.output(npc_name .. " doesn't seem interested.")
end
```

###### On Tell

```luau
-- Track the last NPC told on the actor, for use by the answer verb.
if ctx.noun and ctx.noun.entity_id and ctx.actor and ctx.actor.entity_id then
    engine.set_property(ctx.actor.entity_id, "last_asked_npc", tostring(ctx.noun.entity_id))
    if ctx.noun_2 and ctx.noun_2.entity_id then
        engine.set_property(ctx.actor.entity_id, "last_asked_topic", tostring(ctx.noun_2.entity_id))
    end
end
```

###### After Tell

```luau
if ctx.noun and ctx.noun.entity_id then
    engine.fire_event("Tell", ctx.noun.entity_id, {})
end
```

###### Report Tell

```luau
local topic = ctx.noun_2
local npc   = ctx.noun

-- Per-NPC topic lookup: search the NPC's direct children for a matching topic.
local response = nil
if npc and npc.entity_id then
    local children = engine.entities_in(npc.entity_id)
    if children then
        local topic_name = topic and (topic.name or topic.id) or nil
        for _, child in ipairs(children) do
            if child.kind == "topic" then
                local child_name = child.name or child.id or ""
                if topic_name and (child_name == topic_name or
                   child_name == (topic and topic.id)) then
                    response = child.response
                    break
                end
            end
        end
    end
end

if response == nil and topic then
    response = topic.response
end

if response == nil then
    local npc_name = (npc and npc.name) or "them"
    local topic_name = (topic and topic.name) or "that"
    response = "You tell " .. npc_name .. " about " .. topic_name .. "."
end

engine.output(response)
```
