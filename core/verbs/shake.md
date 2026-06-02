# shake verb

**Default** kind: verb

### shake

- kind: verb
- name: shake
- aliases: [shaking, rattle, agitate]
- noun: required
- noun_scope: reachable
- event: Shake
- prompt_no_noun: Shake what?

Shake an object, possibly rattling its contents or activating it.

#### Triggers

###### Test Shake

```luau
-- v0.1: per-verb attribute check. When kind chains land (task #9),
-- shakeable will be a kind-level property so this lookup moves there.
if ctx.noun == nil then return false end
return ctx.noun.shakeable == "true"
```

###### InsteadOf Shake

```luau
-- Graceful no-op: shaking is non-destructive. "It doesn't rattle" is
-- more evocative than a hard rejection for a static object.
engine.output(ctx.noun.name .. " doesn't rattle.")
```

###### On Shake

> You shake *noun.name*.

###### After Shake

###### Report Shake
