# Light Source Kind

**Default** kind: kind_definition

### light_source

- kind: kind_definition
- name: light_source
- ancestor: item
- attributes:
  - light_source: boolean
  - lit: boolean
  - brightness: string     # dim | bright | daylight (default: bright if absent)

> A portable light source — torch, lantern, candle, or similar. Set `lit: true`
> when the light is burning. Rooms consult all light sources in scope when
> deciding whether they are lit. Use `turn on` / `turn off` to toggle.
> The `brightness` property controls the light level contributed: `dim` raises
> the room one step toward Dim (level 2), `bright` raises it to Bright (level 3),
> `daylight` raises it to Daylight (level 4). Stacking rule: three or more `dim`
> sources in the same area accumulate to one `bright` source. Omitting
> `brightness` defaults to `bright`.

#### Triggers

###### Test Turn On

```luau
-- Guard: refuse if already lit.
if ctx.self == nil then return false end
return ctx.self.lit ~= "true"
```

###### InsteadOf Turn On

```luau
engine.output("The " .. ctx.self.name .. " is already lit.")
```

###### On Turn On

```luau
engine.set_property(ctx.self.entity_id, "lit", "true")
engine.output("The " .. ctx.self.name .. " flickers to life.")
```

###### Test Turn Off

```luau
-- Guard: refuse if already unlit.
if ctx.self == nil then return false end
return ctx.self.lit == "true"
```

###### InsteadOf Turn Off

```luau
engine.output("The " .. ctx.self.name .. " is already dark.")
```

###### On Turn Off

```luau
engine.set_property(ctx.self.entity_id, "lit", "false")
engine.output("The " .. ctx.self.name .. " goes dark.")
```
