# Supporter Kind

**Default** kind: kind_definition

### supporter

- kind: kind_definition
- name: supporter
- ancestor: item
- attributes:
  - portable: boolean
  - capacity: integer
  - enterable: boolean

A surface that holds items on top of it — tables, altars, shelves. Unlike
containers, supporters do not have an open/closed state. Inherits item
triggers; adds On PutOn for placement acknowledgement. Supporters with
`enterable: true` can be climbed onto by an actor (the actor moves to be
"on" the supporter, treated as a location). The `enter` verb handles
enterable logic.

#### Triggers

###### On PutOn

```lua
-- Place an item on the supporter.
engine.output(ctx.noun.name .. " is now on the " .. ctx.self.name .. ".")
engine.set_property(ctx.noun.id, "on", ctx.self.id)
engine.set_property(ctx.noun.id, "at_location", nil)
```
