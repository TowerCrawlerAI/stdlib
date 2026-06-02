# turn verb

**Default** kind: verb

### turn

- kind: verb
- name: turn
- aliases: [turning, rotate, twist]
- noun: required
- noun_scope: reachable
- event: Turn
- prompt_no_noun: Turn what?

Turn or rotate a dial, handle, or similar mechanism.

#### Triggers

###### Test Turn

```luau
-- v0.1: per-verb attribute check. When kind chains land (task #9),
-- turnable will be a kind-level property (dials, valves, wheels) so
-- this lookup moves there.
if ctx.noun == nil then return false end
return ctx.noun.turnable == "true"
```

###### InsteadOf Turn

```luau
-- Graceful no-op: turning is non-destructive. "It doesn't budge" reads
-- as natural world feedback rather than a parser rejection.
engine.output(ctx.noun.name .. " doesn't budge.")
```

###### On Turn

> You turn *noun.name*.

###### After Turn

###### Report Turn
