# Meta Verbs

**Default** kind: verb

Utility verbs that don't map to a single in-world action.

### showme

- kind: verb
- name: showme
- noun: required
- noun_scope: global
- privileged: true
- handler: showme_handler

Dump all engine-stored properties of any entity by name, regardless of visibility, light level, or scope. Admin/debug tool — bypasses all normal visibility and light rules. Output goes to the command channel only, never to the skein narrative. Useful for authoring: `showme bone_construct` prints every property the engine has stored on that entity.

#### Triggers

###### Test Showme

```luau
return ctx.noun ~= nil
```

###### On Showme

```luau
local out = {}
for k, v in pairs(ctx.noun) do
    if k ~= "entity_id" then
        table.insert(out, k .. ": " .. tostring(v))
    end
end
table.sort(out)
engine.output("[showme] " .. (ctx.noun.name or ctx.noun.id or tostring(ctx.noun.entity_id)))
for _, line in ipairs(out) do
    engine.output("  " .. line)
end
```

### restart

- kind: verb
- name: restart
- noun: none
- privileged: true
- handler: restart_handler

Reset the floor to its starting state. Discards the run's actions (locations, flags, picked-up items) and places everything back where the FML declared it. The skein records the restart as an `Input` followed by a fresh `bootstrap`-style sequence of `StateChange` events, so replay walks through both the original run and the restart in order.

### quit

- kind: verb
- name: quit
- aliases: [q, exit game]
- noun: none
- privileged: true
- handler: quit_handler

End the current run immediately. In single-player this terminates the session. In multiplayer only the admin/host may quit, since it ends the run for the entire party. The skein records a `Quit` event before closing.

### save

- kind: verb
- name: save
- noun: none
- privileged: true
- handler: save_handler

Save the current run state to a checkpoint file. In multiplayer only the admin/host may save. Emits a `Checkpoint` event to the skein so replay can seek to the saved position.

### restore

- kind: verb
- name: restore
- aliases: [load]
- noun: none
- privileged: true
- handler: restore_handler

Restore from the most recent checkpoint. Only the admin/host may restore in multiplayer — restoring rolls back all party members' state, which affects everyone.

### undo

- kind: verb
- name: undo
- noun: none
- privileged: true
- handler: undo_handler

Undo the last command. Steps the skein back one `Input` event and re-evaluates world state. Only the admin/host may undo in multiplayer.

### again

- kind: verb
- name: again
- aliases: [g]
- noun: none
- handler: again_handler

Repeat the last non-meta command. Looks up `world.last_command` and re-dispatches it. Typing `again` or `g` will not itself be remembered as `last_command` to avoid infinite repeat loops.

### touch

- kind: verb
- name: touch
- aliases: [feel]
- noun: required
- noun_scope: reachable
- handler: touch_handler
- events: [OnTouch]
- prompt_no_noun: Touch what?

Touch or feel a nearby entity. Fires OnTouch on the target. Scenery objects
respond to touch; the Bone Construct's spring rib uses this to wake the construct.

### use

- kind: verb
- name: use
- phrases: [use on, use with]
- noun: required
- noun_scope: reachable
- handler: use_handler
- events: [OnUse]
- prompt_no_noun: Use what?

Use an object, optionally against a secondary target. `use X on Y`.

### fill

- kind: verb
- name: fill
- phrases: [fill with]
- noun: required
- noun_scope: reachable
- noun_kind: object
- handler: fill_handler
- prompt_no_noun: Fill what with what?

Fill a container with a liquid. `fill <container> with <liquid>`. Fails with
a default message if the liquid has `needs: container` and no container is
in inventory.

### drink

- kind: verb
- name: drink
- aliases: [quaff, sip]
- noun: required
- noun_scope: reachable
- handler: drink_handler
- events: [OnUse]
- prompt_no_noun: Drink what?

Drink a liquid or consume a potion from inventory or the current room.

### search

- kind: verb
- name: search
- aliases: [look in, look through, rummage]
- noun: required
- noun_scope: reachable
- events: [OnSearch]
- prompt_no_noun: Search what?

Search a container, piece of scenery, or area for hidden contents.
Fires OnSearch on the target; authors use triggers to reveal hidden items.

### wear

- kind: verb
- name: wear
- aliases: [put on, don]
- noun: required
- noun_scope: inventory
- events: [OnWear]
- prompt_no_noun: Wear what?

Don a carried item. Fires OnWear on the target; the dnd5e layer handles
equipment slot resolution and AC/stat adjustments.

### remove

- kind: verb
- name: remove
- aliases: [take off, doff]
- noun: required
- noun_scope: inventory
- events: [OnRemove]
- prompt_no_noun: Remove what?

Doff a worn item. Fires OnRemove on the target.

### ask

- kind: verb
- name: ask
- aliases: [talk to, speak to, chat with]
- noun: required
- noun_scope: room
- noun_kind: npc
- events: [OnAsk]
- prompt_no_noun: Ask whom?

Open a dialogue with an NPC. Fires OnAsk on the target; the NPC's trigger
body handles topic routing and response generation.
