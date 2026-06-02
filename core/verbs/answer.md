# answer verb

**Default** kind: verb

### answer

- kind: verb
- name: answer
- aliases: [answering, say, respond]
- noun: optional
- noun_scope: global
- event: Answer
- prompt_no_noun: Answer what?

Reply to a question or challenge. Used after `ask <npc> about <topic>` to
provide a response — most crucially for riddle-challenge mechanics where the
Skull King (or another NPC) awaits a specific answer.

Phase 1: the actor property `last_asked_npc` tracks which NPC was last asked;
`awaiting_answer` on the NPC carries the expected answer. If the player's
literal matches, the answer is correct and the NPC's `on:Answer` trigger fires.

#### Triggers

###### Test Answer

```luau
return true
```

###### On Answer

```luau
-- Determine the literal answer text (raw input stripped of verb prefix).
local raw = ctx.raw or ""
-- Strip the leading verb word from raw to get the answer phrase.
local answer_text = raw:match("^%s*%S+%s+(.*)")
if answer_text == nil or answer_text == "" then
    -- Single-word or bare command: use noun name if available.
    answer_text = (ctx.noun and ctx.noun.name) or ""
end
-- Normalise: lowercase and trim.
answer_text = (answer_text:lower():match("^%s*(.-)%s*$")) or ""

-- Find the last NPC asked (stored on the actor by the ask On stage).
local last_npc_id_str = nil
if ctx.actor and ctx.actor.entity_id then
    local actor_data = engine.query_entity(ctx.actor.entity_id)
    if actor_data then
        last_npc_id_str = actor_data.last_asked_npc
    end
end

if last_npc_id_str == nil or last_npc_id_str == "" then
    -- No conversation context. If a noun was provided, emit the old default response.
    if ctx.noun then
        local noun_name = ctx.noun.name or "them"
        engine.output("You answer " .. noun_name .. ".")
    else
        engine.output("Answer what?")
    end
    return
end

local npc_id_num = tonumber(last_npc_id_str)
if npc_id_num == nil then
    engine.output("Answer what?")
    return
end

local npc = engine.query_entity(npc_id_num)
if npc == nil then
    engine.output("Answer what?")
    return
end

-- Check if this NPC has an awaiting_answer property.
local expected = npc.awaiting_answer
if expected == nil or expected == "" then
    engine.output("You answer, though no one seems to be waiting for it.")
    return
end

-- Normalise expected answers: comma-separated list.
local matched = false
for token in (expected .. ","):gmatch("([^,]*),") do
    local trimmed = (token:lower():match("^%s*(.-)%s*$")) or ""
    if trimmed ~= "" and (trimmed == answer_text or answer_text:find(trimmed, 1, true) ~= nil) then
        matched = true
        break
    end
end

if matched then
    -- Correct answer — clear awaiting_answer and call the NPC's on:Answer trigger.
    engine.set_property(npc_id_num, "awaiting_answer", nil)
    -- Build a ctx-like table for the trigger call.
    local trigger_ctx = { actor = ctx.actor, noun = npc, raw = ctx.raw }
    local handled = engine.call_trigger(npc_id_num, "on:Answer", trigger_ctx)
    if not handled then
        -- Default victory output if NPC has no specific trigger.
        local npc_name = npc.name or "them"
        engine.output("That is the answer. " .. npc_name .. " acknowledges it.")
    end
else
    local npc_name = npc.name or "The creature"
    engine.output(npc_name .. " regards you with hollow contempt — that is not the answer.")
end
```
