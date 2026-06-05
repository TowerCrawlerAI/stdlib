# read verb

**Default** kind: verb

### read

- kind: verb
- name: read
- aliases: [peruse, study]
- noun: required
- noun_scope: reachable
- event: Read
- prompt_no_noun: Read what?

Read a text-bearing object: a document, scroll, sign, book, or any entity
marked `readable: true`. Emits the target's `text` property if present,
falling back to `inscription`, then `contents`, then the `description`
property. Semantically distinct from `examine` — examine describes the
physical object; read conveys its written content.

#### Triggers

###### Test Read

```luau
if ctx.object == 0 then return false end
return engine.get_prop(ctx.object, "readable")
    or engine.get_prop(ctx.object, "kind") == "document"
    or engine.get_prop(ctx.object, "kind") == "book"
    or engine.get_prop(ctx.object, "kind") == "sign"
    or engine.get_prop(ctx.object, "kind") == "scroll"
```

###### InsteadOf Read

```luau
if ctx.object == 0 then
    engine.output("Read what?")
    return
end
engine.output("You can't read that.")
```

###### On Read

```luau
local text = engine.get_prop(ctx.object, "text")
    or engine.get_prop(ctx.object, "inscription")
    or engine.get_prop(ctx.object, "contents")
    or engine.get_prop(ctx.object, "description")
local name = engine.get_prop(ctx.object, "name") or "it"
if text then
    engine.output(text)
else
    engine.output("There is nothing written on " .. name .. ".")
end
```
