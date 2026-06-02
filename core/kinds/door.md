# Door Kind

**Default** kind: kind_definition

### door

- kind: kind_definition
- name: door
- ancestor: scenery
- openable: true
- lockable: true
- portable: false
- attributes:
  - connects: list        # author MUST set; [room_a, room_b]
  - state: string         # open | closed | locked | jammed | broken (author-extensible)
  - key: identifier       # single item ID OR list of item IDs; nil = no key needed
  - passable: function    # function(self, ctx) → bool; evaluated by resolve_direction
  - appearance: string    # prose template for room look
  - locked_prose: string  # emitted when passable=false AND state="locked"
  - closed_prose: string  # emitted when passable=false AND state="closed" (or other)
  - broken_prose: string  # emitted when passable=false AND state="broken"

> A door is a navigable barrier between two rooms. It has a state
> (open/closed/locked/broken) and a `passable` function the engine calls
> when an actor tries to traverse the exit. By default: open and broken
> states are passable; closed and locked are not.
>
> Doors are scenery: not portable, reachable, and can be examined. The
> `open`, `close`, `lock`, and `unlock` verbs work on doors without any
> per-door trigger — the door kind's `openable: true` and `lockable: true`
> declarations are sufficient. Override specific behavior with H6 triggers.
>
> The `key:` property accepts a single item entity id or a list. Any one
> item from the list satisfies the lock/unlock requirement.
>
> Puzzle doors override `passable:` with a backtick function, or override
> `On Unlock` / `Test Go` with H6 triggers, to implement skill-checks,
> riddle locks, and flag-gated conditions.

#### Defaults

- state: closed
- passable: `function(self, ctx) return self.state == "open" or self.state == "broken" end`
- appearance: A door blocks the way.
- locked_prose: It is locked.
- closed_prose: The way is blocked by a closed door.
- broken_prose: The door is broken.

#### Triggers

###### On Enter

```luau
-- Stub: fires when an actor enters the room adjacent to this door.
-- Not the same as "actor moves through the door."
```

###### On Open

```luau
engine.set_property(ctx.noun.entity_id, "state", "open")
engine.output("You open " .. ctx.noun.name .. ".")
```

###### On Close

```luau
engine.set_property(ctx.noun.entity_id, "state", "closed")
engine.output("You close " .. ctx.noun.name .. ".")
```

###### On Lock

```luau
engine.set_property(ctx.noun.entity_id, "state", "locked")
engine.output("You lock " .. ctx.noun.name .. ".")
```

###### On Unlock

```luau
engine.set_property(ctx.noun.entity_id, "state", "closed")
engine.output("You unlock " .. ctx.noun.name .. ".")
```
