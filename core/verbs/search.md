# search verb

**Default** kind: verb

### search

- kind: verb
- name: search
- aliases: [searching, rummage]
- noun: required
- noun_scope: reachable
- event: Search
- prompt_no_noun: Search what?

Search an object or area thoroughly for hidden items or information.

#### Triggers

###### Test Search

```luau
-- v0.1: per-verb attribute check. When kind chains land (task #9),
-- containers and surfaces will carry searchable implicitly.
if ctx.object == 0 then return false end
return engine.get_prop(ctx.object, "searchable")
    or engine.get_prop(ctx.object, "kind") == "container"
    or engine.get_prop(ctx.object, "kind") == "supporter"
```

###### InsteadOf Search

```luau
local name = engine.get_prop(ctx.object, "name") or "it"
engine.output("There's nothing to search on " .. name .. ".")
```

###### On Search

```luau
local name = engine.get_prop(ctx.object, "name") or "it"
engine.output("You search " .. name .. ".")
```
