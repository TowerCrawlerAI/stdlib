# answer verb

**Default** kind: verb

### answer

- kind: verb
- name: answer
- aliases: [answering, respond, reply]
- noun: none
- event: Answer
- prompt_no_noun: Answer what?

Speak an answer aloud — most crucially for riddle / challenge mechanics where an
NPC awaits a specific reply. The whole typed phrase after the verb is the answer
(read from `ctx.raw`), so `answer the silence` works without the words needing to
resolve to a game object.

Graph model: an NPC that awaits a reply carries an `awaiting_answer` property
(a comma-separated list of accepted answers). `answer <phrase>` scans the actor's
room for such an NPC, matches the phrase against its accepted answers, and — on a
match — clears `awaiting_answer` and fires that NPC's `on:Answer` reaction. The
NPC authors the consequence; the verb stays ruleset-agnostic.

#### Triggers

###### Test Answer

```luau
-- Always dispatchable: the answer text comes from ctx.raw, not a resolved noun.
return true
```

###### On Answer

```luau
-- The answer phrase is everything after the verb word in the raw command.
local raw = ctx.raw or ""
local phrase = raw:match("^%s*%S+%s+(.*)")
phrase = phrase and (phrase:lower():match("^%s*(.-)%s*$")) or ""
if phrase == "" then
    engine.output("Answer what?")
    return
end

-- Find someone in this room awaiting an answer.
local target = 0
local expected = nil
if ctx.room ~= 0 then
    for _, n in ipairs(engine.neighbors(ctx.room, "in", "in")) do
        if n ~= ctx.actor then
            local aw = engine.get_prop(n, "awaiting_answer")
            if aw ~= nil and aw ~= "" then
                target = n
                expected = aw
                break
            end
        end
    end
end

if target == 0 then
    engine.output("No one here is waiting for an answer.")
    return
end

-- Match the phrase against the NPC's comma-separated accepted answers
-- (case-insensitive; the phrase need only contain an accepted token).
local matched = false
for token in (expected:lower() .. ","):gmatch("([^,]*),") do
    local t = token:match("^%s*(.-)%s*$")
    if t ~= "" and phrase:find(t, 1, true) ~= nil then
        matched = true
        break
    end
end

local name = engine.get_prop(target, "name") or "It"
if matched then
    engine.set_prop(target, "awaiting_answer", "")  -- consumed
    -- Fire the NPC's authored reaction; fall back to a generic line.
    local handled = engine.call_trigger(target, "on:Answer", ctx)
    if not handled then
        engine.output(name .. " accepts your answer.")
    end
else
    engine.output(name .. " gives no sign that your answer is right.")
end
```

###### After Answer

###### Report Answer
