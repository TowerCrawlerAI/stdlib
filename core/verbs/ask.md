# ask verb

**Default** kind: verb

### ask

- kind: verb
- name: ask
- aliases: [asking, question]
- noun: required
- noun_scope: reachable
- noun_kind: npc
- preposition: about
- noun_2: required
- noun_scope_2: topic
- event: Ask
- prompt_no_noun: Ask whom?
- prompt_no_noun_2: Ask about what?

Ask an NPC about a topic. The NPC must be reachable; the topic is resolved
globally across all topic-kind entities in the store.

#### Triggers

###### Test Ask

```luau
if ctx.noun == nil then return false end
if ctx.noun_2 == nil then return false end
return true
```

###### InsteadOf Ask

```luau
if ctx.noun == nil then
    engine.output("There's no one here to ask.")
elseif ctx.noun_2 == nil then
    engine.output("Ask about what?")
else
    local npc_name = (ctx.noun and ctx.noun.name) or "They"
    engine.output(npc_name .. " doesn't seem to know anything about that.")
end
```

###### On Ask

```luau
-- Track the last NPC asked on the actor, for use by the answer verb.
-- engine.record_topic_heard deferred to Phase 2 knowledge envelope.
if ctx.noun and ctx.noun.entity_id and ctx.actor and ctx.actor.entity_id then
    engine.set_property(ctx.actor.entity_id, "last_asked_npc", tostring(ctx.noun.entity_id))
    if ctx.noun_2 and ctx.noun_2.entity_id then
        engine.set_property(ctx.actor.entity_id, "last_asked_topic", tostring(ctx.noun_2.entity_id))
    end
end
-- Per-entity on:Ask triggers (e.g. Skull King sets awaiting_answer when asked about riddle)
-- are dispatched automatically by the engine bubble-chain dispatcher after this On body.
-- No manual engine.call_trigger needed here.
```

###### After Ask

```luau
if ctx.noun and ctx.noun.entity_id then
    engine.fire_event("Ask", ctx.noun.entity_id, {})
end
-- Per-entity after:Ask and after:Ask About triggers are dispatched
-- automatically by the engine bubble-chain dispatcher (TRIGGERS.md).
-- No manual engine.call_trigger calls needed here.
```

###### Report Ask

```luau
local topic = ctx.noun_2
local npc   = ctx.noun

-- Per-NPC topic lookup: search the NPC's direct children for a topic
-- sub-entity whose name matches the global topic being asked about.
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

-- Fall back to the global topic's response property.
if response == nil and topic then
    response = topic.response
end

-- Final fallback: generic decline.
if response == nil then
    local npc_name = (npc and npc.name) or "They"
    response = npc_name .. " has nothing to say about that."
end

engine.output(response)
```
