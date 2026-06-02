# swing verb

**Default** kind: verb

### swing

- kind: verb
- name: swing
- aliases: [swinging, brandish, flourish]
- noun: required
- noun_scope: inventory
- handler: swing_handler
- event: Swing
- prompt_no_noun: Swing what?

Swing a weapon or held object dramatically.

#### Triggers

###### Test Swing

```luau
-- v0.1: per-verb attribute check. When kind chains land (task #9),
-- weapon kinds will carry swingable implicitly so this moves there.
if ctx.noun == nil then return false end
return ctx.noun.swingable == "true" or ctx.noun.kind == "weapon"
```

###### InsteadOf Swing

```luau
engine.output("You'd need a proper weapon to swing.")
```

###### On Swing

> You swing *noun.name*.

###### After Swing

###### Report Swing
