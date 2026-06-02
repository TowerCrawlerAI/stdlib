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
if ctx.noun == nil then return false end
return ctx.noun.searchable == "true"
    or ctx.noun.kind == "container"
    or ctx.noun.kind == "supporter"
```

###### InsteadOf Search

```luau
engine.output("There's nothing to search on " .. ctx.noun.name .. ".")
```

###### On Search

> You search *noun.name*.

###### After Search

###### Report Search
