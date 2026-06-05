# inventory verb

**Default** kind: verb

### inventory

- kind: verb
- name: inventory
- aliases: [i, inv]
- noun: none
- handler: inventory_handler
- event: Inventory

List the entities the player is currently carrying.

#### Triggers

###### Test Inventory

```luau
if ctx.object ~= 0 then
    engine.output("You can only check your own inventory.")
    return false
end
return true
```

###### On Inventory

```luau
local items = engine.neighbors(ctx.actor, "carried", "in")
if #items == 0 then
    engine.output("You are carrying nothing.")
else
    local names = {}
    for _, id in ipairs(items) do
        table.insert(names, engine.get_prop(id, "name") or "something")
    end
    engine.output("You are carrying: " .. table.concat(names, ", ") .. ".")
end
```
