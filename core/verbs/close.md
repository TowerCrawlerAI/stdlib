# close verb

**Default** kind: verb

### close

- kind: verb
- name: close
- aliases: [shut]
- noun: required
- noun_scope: reachable
- noun_kind: container
- event: Close
- events: [on_close]
- prompt_no_noun: Close what?

Close an open door, chest, or container. Fails if already closed or not openable.

#### Triggers

###### Test Close

```luau
-- Graph ctx: ctx.object node id; real-value props. Doors use a "state" string;
-- containers a boolean "open".
if ctx.object == 0 then return false end
local kind = engine.get_prop(ctx.object, "kind")
local openable = engine.get_prop(ctx.object, "openable")
    or kind == "container" or kind == "door"
if not openable then return false end
if kind == "door" then
    if (engine.get_prop(ctx.object, "state") or "closed") ~= "open" then return false end
else
    if not engine.get_prop(ctx.object, "open") then return false end
end
return true
```

###### InsteadOf Close

```luau
local name = engine.get_prop(ctx.object, "name") or "it"
local kind = engine.get_prop(ctx.object, "kind")
local openable = engine.get_prop(ctx.object, "openable")
    or kind == "container" or kind == "door"
if not openable then
    engine.output(name .. " isn't something you can close.")
else
    engine.output(name .. " is already closed.")
end
```

###### On Close

```luau
local name = engine.get_prop(ctx.object, "name") or "it"
if engine.get_prop(ctx.object, "kind") == "door" then
    engine.set_prop(ctx.object, "state", "closed")
else
    engine.set_prop(ctx.object, "open", false)
end
engine.output("You close " .. name .. ".")
```
