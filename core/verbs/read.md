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
falling back to `inscription`, then `contents`, then the general `prose`
description. Semantically distinct from `examine` — examine describes the
physical object; read conveys its written content.

#### Triggers

###### Test Read

```luau
if ctx.noun == nil then return false end
return ctx.noun.readable == "true"
    or ctx.noun.kind == "document"
    or ctx.noun.kind == "book"
    or ctx.noun.kind == "sign"
    or ctx.noun.kind == "scroll"
```

###### InsteadOf Read

```luau
if ctx.noun == nil then
    engine.output("Read what?")
    return
end
engine.output("You can't read that.")
```

###### On Read

```luau
if ctx.noun == nil then return end
local text = ctx.noun.text
    or ctx.noun.inscription
    or ctx.noun.contents
    or engine.call_prose(ctx.noun.entity_id, "prose", ctx)
    or engine.call_prose(ctx.noun.entity_id, "description", ctx)
if text then
    engine.output(text)
else
    engine.output("There is nothing written on " .. (ctx.noun.name or "it") .. ".")
end
```

###### After Read

```luau
if ctx.noun and ctx.noun.entity_id then
    engine.fire_event("Read", ctx.noun.entity_id, { actor = ctx.actor.entity_id })
end
```
