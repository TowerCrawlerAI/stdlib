# consult verb

**Default** kind: verb

### consult

- kind: verb
- name: consult
- aliases: [consulting, refer to, look up in]
- noun: required
- noun_scope: reachable
- preposition: about
- noun_2: optional
- noun_scope_2: topic
- event: Consult
- prompt_no_noun: Consult what?

Consult a reference work (book, scroll, etc.) for information. The optional
`about <topic>` form narrows the query; the reference work's `response` for
that topic is emitted if found.

#### Triggers

###### Test Consult

```luau
return ctx.noun ~= nil
```

###### On Consult

```luau
-- Determine response: if topic provided, try reference work's sub-entity match.
local ref = ctx.noun
local topic = ctx.noun_2
local response = nil

if topic and ref and ref.entity_id then
    -- Check if the reference work has a child entity matching this topic.
    local children = engine.entities_in(ref.entity_id)
    if children then
        local topic_name = topic.name or topic.id or ""
        for _, child in ipairs(children) do
            if child.kind == "topic" then
                local child_name = child.name or child.id or ""
                if child_name == topic_name then
                    response = child.response
                    break
                end
            end
        end
    end
    -- Fall back to the global topic response.
    if response == nil then
        response = topic.response
    end
end

if response == nil then
    local ref_name = (ref and ref.name) or "it"
    if topic then
        local topic_name = (topic and topic.name) or "that"
        response = "You consult " .. ref_name .. " about " .. topic_name .. " but find nothing useful."
    else
        response = "You consult " .. ref_name .. "."
    end
end

engine.output(response)
```

###### After Consult

```luau
if ctx.noun and ctx.noun.entity_id then
    engine.fire_event("Consulted", ctx.noun.entity_id, {})
end
```
