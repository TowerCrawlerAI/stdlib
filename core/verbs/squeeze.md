# squeeze verb

**Default** kind: verb

### squeeze

- kind: verb
- name: squeeze
- aliases: [squeezing, compress, press]
- noun: required
- noun_scope: reachable
- handler: squeeze_handler
- event: Squeeze
- prompt_no_noun: Squeeze what?

Squeeze an object firmly, possibly extracting contents.

#### Triggers

###### Test Squeeze

```luau
-- v0.1: per-verb attribute check. When kind chains land (task #9),
-- squeezable will be a kind-level property so this lookup moves there.
if ctx.noun == nil then return false end
return ctx.noun.squeezable == "true"
```

###### InsteadOf Squeeze

```luau
-- Graceful no-op: squeezing is non-destructive. "It doesn't yield" is
-- better authoring than a hard rejection for a rigid object.
engine.output(ctx.noun.name .. " doesn't yield.")
```

###### On Squeeze

> You squeeze *noun.name*.

###### After Squeeze

###### Report Squeeze
