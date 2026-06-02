# Room Kind

**Default** kind: kind_definition

### room

- kind: kind_definition
- name: room
- ancestor: place
- attributes:
  - exits: dict
  - dark: boolean
  - lit: boolean
  - visited: boolean
  - outdoor: boolean       # true = open sky; receives daylight during daytime
  - underground: boolean   # true = below ground; blocks outdoor daylight
  - level: integer         # vertical position (0 = surface, negative = underground)
  - inside_exit: identifier  # exit target for the "inside" direction
  - outside_exit: identifier # exit target for the "outside" direction
  - display_name: string     # player-facing room label; nil = use name (default)

> A navigable location the player can move through. Rooms have directional
> exits to other rooms and a visited flag the engine sets on first entry.
> By default rooms are lit. Set `dark: true` to force permanent darkness
> regardless of light sources. Set `lit: true` for explicit ambient light
> (redundant with the default, but useful for clarity). The engine's
> `light_level` binding returns an integer 0–4 (Magical Dark / Unlit / Dim /
> Bright / Daylight); `is_lit` is a backward-compatible boolean alias for
> level ≥ 2. Set `outdoor: true` for open-sky rooms that receive daylight
> when `time_of_day` is `"day"`. Set `underground: true` to block outdoor
> daylight regardless of level. `inside_exit` and `outside_exit` name the
> targets for the `in` / `out` direction shortcuts.

#### Triggers

###### On Enter

```luau
-- Emit the room display_name (falls back to name when display_name is absent),
-- then prose qualified by light level.
local _shown_name = (ctx.self.display_name and ctx.self.display_name ~= "") and ctx.self.display_name or ctx.self.name
engine.output(_shown_name)
local level = engine.light_level(ctx.self.entity_id, ctx.actor.entity_id)
if level == 0 then
    engine.output("Magical darkness presses in from all sides.")
elseif level == 1 then
    engine.output("It is pitch dark. You can't see a thing.")
else
    local _self_prose = engine.call_prose(ctx.self.entity_id, "prose", ctx)
    if _self_prose and _self_prose ~= "" then
        if level == 2 then
            engine.output("[Dim] " .. _self_prose)
        else
            engine.output(_self_prose)
        end
    end
    if level == 4 and ctx.self.outdoor == "true" then
        engine.output("Daylight illuminates the area.")
    end
end
engine.set_property(ctx.self.entity_id, "visited", "true")
```

###### On Exit

```luau
-- Stub: subtypes override to react to a departing actor.
-- ctx.actor leaves ctx.self toward ctx.exit_direction.
```
