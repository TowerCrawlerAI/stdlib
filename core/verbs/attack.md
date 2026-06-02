# attack verb

**Default** kind: verb

### attack

- kind: verb
- name: attack
- aliases: [fight, hit, strike, kill]
- phrases: [hit with, strike with, attack with]
- noun: required
- noun_scope: room
- noun_kind: actor
- preposition: with
- preposition_aliases: [using]
- noun_2: optional
- noun_scope_2: inventory
- event: Attack
- prompt_no_noun: Attack what?

Initiate a combat attack against a visible actor. When a second noun is provided
(`hit <target> with <weapon>`), it specifies the instrument used. When absent,
attack with bare hands (existing behavior). Damage resolution is a v0.2 engine
primitive; this stage fires the event and emits the attempt message only.

#### Triggers

###### Test Attack

```luau
-- v0.1: per-verb attribute check. When kind chains land (task #9),
-- animate will be a kind-level property so this lookup moves there.
if ctx.noun == nil then return false end
return ctx.noun.animate == "true" or ctx.noun.attackable == "true"
```

###### InsteadOf Attack

```luau
local noun_name = (ctx.noun and ctx.noun.name) or "that"
engine.output(noun_name .. " isn't something you can attack.")
```

###### On Attack

```luau
local noun_name = (ctx.noun and ctx.noun.name) or "the target"
if ctx.noun_2 ~= nil then
    local weapon_name = ctx.noun_2.name or "your weapon"
    engine.output("You attack " .. noun_name .. " with " .. weapon_name .. "!")
else
    engine.output("You attack " .. noun_name .. "!")
end
```

###### After Attack

```luau
-- Per-entity after:Attack and after:Attack With triggers are dispatched
-- automatically by the engine bubble-chain dispatcher (TRIGGERS.md).
-- No manual engine.call_trigger calls needed here.
```
