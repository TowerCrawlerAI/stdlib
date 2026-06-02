# swim verb

**Default** kind: verb

### swim

- kind: verb
- name: swim
- aliases: [swimming]
- noun: none
- handler: swim_handler
- event: Swim

Swim — only useful in locations with water.

#### Triggers

###### Test Swim

```luau
if ctx.noun ~= nil then
    engine.output("You can't swim at a specific thing.")
    return false
end
local room = ctx.room
if room == nil or room.water ~= "true" then
    return false
end
return true
```

###### InsteadOf Swim

> There's no water here.

###### On Swim

> You swim through the water.

###### After Swim

###### Report Swim
