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
return ctx.object ~= 0
```

###### On Consult

```luau
-- Determine response: if topic provided, try reference work's sub-entity match.
local ref = ctx.object
local topic = ctx.object2  -- 0 if no topic given
local response = nil

if topic ~= 0 then
    -- Check if the reference work has a child entity (kind=="topic") matching this topic.
    local children = engine.neighbors(ref, "in", "in")
    local topic_name = engine.get_prop(topic, "name") or ""
    for _, child in ipairs(children) do
        if engine.get_prop(child, "kind") == "topic" then
            local child_name = engine.get_prop(child, "name") or ""
            if child_name == topic_name then
                response = engine.get_prop(child, "response")
                break
            end
        end
    end
    -- Fall back to the global topic response property.
    if response == nil then
        response = engine.get_prop(topic, "response")
    end
end

if response == nil then
    local ref_name = engine.get_prop(ref, "name") or "it"
    if topic ~= 0 then
        local topic_name = engine.get_prop(topic, "name") or "that"
        response = "You consult " .. ref_name .. " about " .. topic_name .. " but find nothing useful."
    else
        response = "You consult " .. ref_name .. "."
    end
end

engine.output(response)
```
