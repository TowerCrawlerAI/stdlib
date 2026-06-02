# extinguish verb

**Default** kind: verb

### extinguish

- kind: verb
- name: extinguish
- aliases: [snuff, douse, put_out]
- phrases: [blow out]
- noun: required
- noun_scope: reachable
- event: Extinguish
- prompt_no_noun: Extinguish what?

Put out a lit light source.

#### Triggers

###### Test Extinguish

```luau
if ctx.noun == nil then return false end
return ctx.noun.lit == "true"
```

###### InsteadOf Extinguish

> It's not lit.

###### On Extinguish

```luau
engine.set_property(ctx.noun.entity_id, "lit", "")
engine.output("You snuff the " .. (ctx.noun.name or "object") .. ".")
```

###### After Extinguish

###### Report Extinguish
