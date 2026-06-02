# Container Kind

**Default** kind: kind_definition

### container

- kind: kind_definition
- name: container
- ancestor: item
- attributes:
  - portable: boolean
  - capacity: integer
  - open: boolean
  - openable: boolean
  - transparent: boolean
  - lockable: boolean
  - locked: boolean
  - enterable: boolean

> A room-like object that holds other items. Containers have an open/closed
> state; InsteadOf PutIn guards against placing items in a closed container.
> Transparent containers (e.g. glass cases) can be seen through when closed
> but still cannot be touched through — you must open them to take items.
> Containers with `enterable: true` can be physically entered by an actor
> (e.g., a bath, a pit, a magic circle). The `enter` verb handles enterable
> logic; the container itself needs no extra triggers.
> Inherits all item triggers.

#### Triggers

###### Test Open

```luau
-- Guard: not already open, not locked, and openable.
if ctx.self == nil then return false end
if ctx.self.openable == "false" then return false end
if ctx.self.locked == "true" then return false end
if ctx.self.open == "true" then return false end
return true
```

###### InsteadOf Open

```luau
if ctx.self.locked == "true" then
    engine.output("The " .. ctx.self.name .. " is locked.")
elseif ctx.self.openable == "false" then
    engine.output("The " .. ctx.self.name .. " can't be opened.")
else
    engine.output("The " .. ctx.self.name .. " is already open.")
end
```

###### On Open

```luau
engine.set_property(ctx.self.entity_id, "open", "true")
engine.output("You open " .. ctx.self.name .. ".")
```

###### After Open

```luau
-- Reveal contents now that the container is open.
local contents = engine.entities_in(ctx.self.entity_id)
if #contents > 0 then
    local names = {}
    for _, item in ipairs(contents) do
        table.insert(names, item.name or "something")
    end
    engine.output(ctx.self.name .. " contains: " .. table.concat(names, ", ") .. ".")
end
```

###### Test Close

```luau
-- Guard: must be open and openable to close.
if ctx.self == nil then return false end
if ctx.self.openable == "false" then return false end
if ctx.self.open ~= "true" then return false end
return true
```

###### InsteadOf Close

```luau
if ctx.self.openable == "false" then
    engine.output("The " .. ctx.self.name .. " can't be closed.")
else
    engine.output("The " .. ctx.self.name .. " is already closed.")
end
```

###### On Close

```luau
engine.set_property(ctx.self.entity_id, "open", "false")
engine.output("You close " .. ctx.self.name .. ".")
```

###### InsteadOf PutIn

```luau
-- Refuse if the container is closed or permanently sealed.
if ctx.self.openable == "false" then
    engine.output("The " .. ctx.self.name .. " can't be opened.")
    return engine.cancel()
end
if ctx.self.open ~= "true" then
    engine.output("The " .. ctx.self.name .. " is closed.")
    return engine.cancel()
end
```

###### On PutIn

```luau
engine.output("You put " .. ctx.noun.name .. " in " .. ctx.self.name .. ".")
```
