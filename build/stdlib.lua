-- stdlib verb module — generated from /home/zanethorn/src/TowerCrawlerAI/stdlib/core/index.md

-- verb alias registrations
engine.register_verb_alias("move", "go")
engine.register_verb_alias("walk", "go")
engine.register_verb_alias("travel", "go")
engine.register_verb_alias("l", "look")
engine.register_verb_alias("x", "examine")
engine.register_verb_alias("inspect", "examine")
engine.register_verb_alias("look at", "examine")
engine.register_verb_alias("look in", "examine")
engine.register_verb_alias("l at", "examine")
engine.register_verb_alias("l in", "examine")
engine.register_verb_alias("get", "take")
engine.register_verb_alias("grab", "take")
engine.register_verb_alias("pick up", "take")
engine.register_verb_alias("discard", "drop")
engine.register_verb_alias("put down", "drop")
engine.register_verb_alias("leave", "drop")
engine.register_verb_alias("place", "put")
engine.register_verb_alias("insert", "put")
engine.register_verb_alias("put in", "put")
engine.register_verb_alias("put on", "put")
engine.register_verb_alias("open up", "open")
engine.register_verb_alias("shut", "close")
engine.register_verb_alias("fight", "attack")
engine.register_verb_alias("hit", "attack")
engine.register_verb_alias("strike", "attack")
engine.register_verb_alias("kill", "attack")
engine.register_verb_alias("hit with", "attack")
engine.register_verb_alias("strike with", "attack")
engine.register_verb_alias("attack with", "attack")
engine.register_verb_alias("z", "wait")
engine.register_verb_alias("i", "inventory")
engine.register_verb_alias("inv", "inventory")
engine.register_verb_alias("q", "quit")
engine.register_verb_alias("exit game", "quit")
engine.register_verb_alias("load", "restore")
engine.register_verb_alias("g", "again")
engine.register_verb_alias("touching", "touch")
engine.register_verb_alias("feel", "touch")
engine.register_verb_alias("pat", "touch")
engine.register_verb_alias("use on", "use")
engine.register_verb_alias("use with", "use")
engine.register_verb_alias("pour", "fill")
engine.register_verb_alias("top up", "fill")
engine.register_verb_alias("fill with", "fill")
engine.register_verb_alias("fill up", "fill")
engine.register_verb_alias("fill up with", "fill")
engine.register_verb_alias("drinking", "drink")
engine.register_verb_alias("sip", "drink")
engine.register_verb_alias("quaff", "drink")
engine.register_verb_alias("searching", "search")
engine.register_verb_alias("rummage", "search")
engine.register_verb_alias("wearing", "wear")
engine.register_verb_alias("put on", "wear")
engine.register_verb_alias("don", "wear")
engine.register_verb_alias("removing", "remove")
engine.register_verb_alias("take off", "remove")
engine.register_verb_alias("doff", "remove")
engine.register_verb_alias("asking", "ask")
engine.register_verb_alias("question", "ask")
engine.register_verb_alias("answering", "answer")
engine.register_verb_alias("respond", "answer")
engine.register_verb_alias("reply", "answer")
engine.register_verb_alias("telling", "tell")
engine.register_verb_alias("thinking", "think")
engine.register_verb_alias("ponder", "think")
engine.register_verb_alias("muse", "think")
engine.register_verb_alias("singing", "sing")
engine.register_verb_alias("hum", "sing")
engine.register_verb_alias("consulting", "consult")
engine.register_verb_alias("refer to", "consult")
engine.register_verb_alias("look up in", "consult")
engine.register_verb_alias("peruse", "read")
engine.register_verb_alias("study", "read")
engine.register_verb_alias("listening", "listen")
engine.register_verb_alias("hear", "listen")
engine.register_verb_alias("buying", "buy")
engine.register_verb_alias("purchase", "buy")
engine.register_verb_alias("biting", "bite")
engine.register_verb_alias("gnaw", "bite")
engine.register_verb_alias("blowing", "blow")
engine.register_verb_alias("blow on", "blow")
engine.register_verb_alias("cutting", "cut")
engine.register_verb_alias("slice", "cut")
engine.register_verb_alias("slash", "cut")
engine.register_verb_alias("kicking", "kick")
engine.register_verb_alias("boot", "kick")
engine.register_verb_alias("squeezing", "squeeze")
engine.register_verb_alias("compress", "squeeze")
engine.register_verb_alias("press", "squeeze")
engine.register_verb_alias("throw", "throw_at")
engine.register_verb_alias("throwing", "throw_at")
engine.register_verb_alias("hurl", "throw_at")
engine.register_verb_alias("toss", "throw_at")
engine.register_verb_alias("throw at", "throw_at")
engine.register_verb_alias("throwing at", "throw_at")
engine.register_verb_alias("hurl at", "throw_at")
engine.register_verb_alias("toss at", "throw_at")
engine.register_verb_alias("swinging", "swing")
engine.register_verb_alias("brandish", "swing")
engine.register_verb_alias("flourish", "swing")
engine.register_verb_alias("burning", "burn")
engine.register_verb_alias("ignite", "burn")
engine.register_verb_alias("set fire to", "burn")
engine.register_verb_alias("digging", "dig")
engine.register_verb_alias("excavate", "dig")
engine.register_verb_alias("climbing", "climb")
engine.register_verb_alias("scale", "climb")
engine.register_verb_alias("clamber up", "climb")
engine.register_verb_alias("swimming", "swim")
engine.register_verb_alias("jumping", "jump")
engine.register_verb_alias("leap", "jump")
engine.register_verb_alias("hop", "jump")
engine.register_verb_alias("entering", "enter")
engine.register_verb_alias("go into", "enter")
engine.register_verb_alias("get in", "enter")
engine.register_verb_alias("exiting", "exit")
engine.register_verb_alias("leave", "exit")
engine.register_verb_alias("get out", "exit")
engine.register_verb_alias("eating", "eat")
engine.register_verb_alias("consume", "eat")
engine.register_verb_alias("devour", "eat")
engine.register_verb_alias("smelling", "smell")
engine.register_verb_alias("sniff", "smell")
engine.register_verb_alias("inhale", "smell")
engine.register_verb_alias("tasting", "taste")
engine.register_verb_alias("lick", "taste")
engine.register_verb_alias("sleeping", "sleep")
engine.register_verb_alias("rest", "sleep")
engine.register_verb_alias("nap", "sleep")
engine.register_verb_alias("lie down", "sleep")
engine.register_verb_alias("waking", "wake")
engine.register_verb_alias("wake up", "wake_up")
engine.register_verb_alias("waking up", "wake_up")
engine.register_verb_alias("awaken", "wake_up")
engine.register_verb_alias("look under", "look_under")
engine.register_verb_alias("looking under", "look_under")
engine.register_verb_alias("search under", "look_under")
engine.register_verb_alias("fixing", "fix")
engine.register_verb_alias("repair", "fix")
engine.register_verb_alias("mend", "fix")
engine.register_verb_alias("get off", "get_off")
engine.register_verb_alias("getting off", "get_off")
engine.register_verb_alias("dismount", "get_off")
engine.register_verb_alias("climb off", "get_off")
engine.register_verb_alias("pushing", "push")
engine.register_verb_alias("shove", "push")
engine.register_verb_alias("nudge", "push")
engine.register_verb_alias("pulling", "pull")
engine.register_verb_alias("yank", "pull")
engine.register_verb_alias("tug", "pull")
engine.register_verb_alias("pushing", "push_to")
engine.register_verb_alias("shove", "push_to")
engine.register_verb_alias("slide", "push_to")
engine.register_verb_alias("move", "push_to")
engine.register_verb_alias("push to", "push_to")
engine.register_verb_alias("pushing to", "push_to")
engine.register_verb_alias("shove to", "push_to")
engine.register_verb_alias("move to", "push_to")
engine.register_verb_alias("slide to", "push_to")
engine.register_verb_alias("locking", "lock")
engine.register_verb_alias("unlocking", "unlock")
engine.register_verb_alias("tying", "tie")
engine.register_verb_alias("bind", "tie")
engine.register_verb_alias("fasten", "tie")
engine.register_verb_alias("turning", "turn")
engine.register_verb_alias("rotate", "turn")
engine.register_verb_alias("twist", "turn")
engine.register_verb_alias("turn off", "turn_off")
engine.register_verb_alias("turning off", "turn_off")
engine.register_verb_alias("switch off", "turn_off")
engine.register_verb_alias("deactivate", "turn_off")
engine.register_verb_alias("turn on", "turn_on")
engine.register_verb_alias("turning on", "turn_on")
engine.register_verb_alias("switch on", "turn_on")
engine.register_verb_alias("activate", "turn_on")
engine.register_verb_alias("waving", "wave")
engine.register_verb_alias("wave at", "wave_at")
engine.register_verb_alias("waving at", "wave_at")
engine.register_verb_alias("beckon", "wave_at")
engine.register_verb_alias("put on", "put_on")
engine.register_verb_alias("putting on", "put_on")
engine.register_verb_alias("rubbing", "rub")
engine.register_verb_alias("polish", "rub")
engine.register_verb_alias("clean", "rub")
engine.register_verb_alias("shaking", "shake")
engine.register_verb_alias("rattle", "shake")
engine.register_verb_alias("agitate", "shake")
engine.register_verb_alias("setting", "set")
engine.register_verb_alias("place", "set")
engine.register_verb_alias("position", "set")
engine.register_verb_alias("set to", "set_to")
engine.register_verb_alias("setting to", "set_to")
engine.register_verb_alias("adjust to", "set_to")
engine.register_verb_alias("configure to", "set_to")
engine.register_verb_alias("kindle", "light")
engine.register_verb_alias("ignite", "light")
engine.register_verb_alias("snuff", "extinguish")
engine.register_verb_alias("douse", "extinguish")
engine.register_verb_alias("put_out", "extinguish")
engine.register_verb_alias("blow out", "extinguish")
engine.register_verb_alias("north", "go north")
engine.register_verb_alias("n", "go north")
engine.register_verb_alias("south", "go south")
engine.register_verb_alias("s", "go south")
engine.register_verb_alias("east", "go east")
engine.register_verb_alias("e", "go east")
engine.register_verb_alias("west", "go west")
engine.register_verb_alias("w", "go west")
engine.register_verb_alias("up", "go up")
engine.register_verb_alias("u", "go up")
engine.register_verb_alias("down", "go down")
engine.register_verb_alias("d", "go down")
engine.register_verb_alias("in", "go in")
engine.register_verb_alias("inside", "go in")
engine.register_verb_alias("enter room", "go in")
engine.register_verb_alias("out", "exit")
engine.register_verb_alias("outside", "go out")
engine.register_verb_alias("go outside", "go out")

local _h_go_handler_test = function(ctx)
    return ctx.room ~= nil
end

local _h_go_handler_on = function(ctx)
    local direction = (ctx.literal ~= nil and ctx.literal ~= "") and ctx.literal or ctx.verb
    local dest_id = engine.resolve_direction(ctx.room.entity_id, direction)
    if dest_id then
        -- Check for a door on this exit before moving.
        -- The room's "exit_door_id:<direction>" property holds the resolved
        -- engine entity id of the door (set during LFR post-processing).
        local door_key = "exit_door_id:" .. direction
        local room_entity = engine.query_entity(ctx.room.entity_id)
        local door_id_str = room_entity and room_entity[door_key]
        if door_id_str ~= nil then
            local door_id = tonumber(door_id_str)
            if door_id ~= nil then
                local door = engine.query_entity(door_id)
                if door ~= nil then
                    local state = door.state or "closed"
                    local passable = (state == "open" or state == "broken")
                    if not passable then
                        -- Emit appropriate blocked prose.
                        if state == "locked" then
                            local prose = door.locked_prose or "It is locked."
                            engine.output(prose)
                        else
                            local prose = door.closed_prose or "The way is blocked by a closed door."
                            engine.output(prose)
                        end
                        return
                    end
                end
            end
        end
        engine.move_actor(ctx.actor.entity_id, dest_id)
        -- Auto-look after movement: Report Go fires engine.dispatch("look") if supported,
        -- otherwise the engine's after-go look hook handles it.
    else
        engine.output("You can't go that way.")
    end
end

local _h_go_handler_after = function(ctx)
    -- Fire After Enter on the destination room so room-level entry triggers run.
    local direction = (ctx.literal ~= nil and ctx.literal ~= "") and ctx.literal or ctx.verb
    local dest_id = engine.resolve_direction(ctx.room and ctx.room.entity_id or 0, direction)
    if dest_id then
        engine.call_trigger(dest_id, "after:Enter", ctx)
    end
end

local _h_go_handler_report = function(ctx)
    -- Trigger an automatic look after successful movement.
    -- engine.dispatch is a best-effort call; if not yet bound, movement still completes.
    if engine.dispatch then
        engine.dispatch("look")
    end
end

local _h_describe_current_place_test = function(ctx)
    return true
end

local _h_describe_current_place_on = function(ctx)
    -- look <noun> ≡ examine <noun> (Inform 7 convention).
    if ctx.noun ~= nil then
        engine.dispatch("examine " .. ctx.literal)
        return
    end

    if not ctx.room then
        engine.output("You look around, but can't make out your surroundings.")
        return
    end

    local level = engine.light_level(ctx.room.entity_id, ctx.actor.entity_id)
    if level == 0 then
        engine.output("Magical darkness surrounds you. Even your torch cannot pierce it.")
        return
    elseif level == 1 then
        engine.output("It is pitch dark. You can't see a thing.")
        return
    end

    -- Room display_name (player-facing label); falls back to name when absent.
    local _shown_name = (ctx.room.display_name and ctx.room.display_name ~= "") and ctx.room.display_name or ctx.room.name
    engine.output(_shown_name)
    local _room_prose = engine.call_prose(ctx.room.entity_id, "prose", ctx)
    if _room_prose and _room_prose ~= "" then
        if level == 2 then
            engine.output("[Dim light] " .. _room_prose)
        else
            engine.output(_room_prose)
        end
    end

    -- Note daylight in outdoor rooms.
    if level == 4 and ctx.room.outdoor == "true" then
        engine.output("Daylight filters down from above.")
    end

    -- List visible entities in the room (excluding actor and scenery).
    -- Scenery is woven into room prose by authors; it must not appear in
    -- the "You can also see:" enumeration (Inform 7 convention).
    local entities = engine.entities_in(ctx.room.entity_id)
    local visible = {}
    for _, e in ipairs(entities) do
        if e.entity_id ~= ctx.actor.entity_id
            and e.kind ~= "scenery"
            and engine.can_see(ctx.actor.entity_id, e.entity_id) then
            table.insert(visible, e)
        end
    end

    if #visible > 0 then
        local parts = {}
        for _, e in ipairs(visible) do
            local label = e.name or "something"
            -- Describe open or transparent containers with their contents inline.
            if e.open == "true" or e.transparent == "true" then
                local contents = engine.entities_in(e.entity_id)
                local cnames = {}
                for _, item in ipairs(contents) do
                    if engine.can_see(ctx.actor.entity_id, item.entity_id) then
                        table.insert(cnames, item.name or "something")
                    end
                end
                if #cnames > 0 then
                    local state = e.open == "true" and "open" or "closed"
                    label = label .. " (" .. state .. ", containing " .. table.concat(cnames, ", ") .. ")"
                else
                    label = label .. " (" .. (e.open == "true" and "open, empty" or "closed") .. ")"
                end
            end
            table.insert(parts, label)
        end
        engine.output("You can also see: " .. table.concat(parts, ", ") .. ".")
    end
end

local _h_examine_handler_test = function(ctx)
    -- Graph ctx (engine-core STAGE_API.md): ctx.object is the noun node id (0 = none).
    -- (Light gating dropped — the graph engine has no light model yet.)
    if ctx.object == 0 then return false end
    return engine.can_see(ctx.actor, ctx.object)
end

local _h_examine_handler_instead_of = function(ctx)
    -- Noun didn't resolve. (Legacy direction-word exit description is dropped until
    -- the graph engine models direction-labeled exits.)
    engine.output("You can't see that here.")
end

local _h_examine_handler_on = function(ctx)
    -- Graph ctx: ctx.object is the noun node id; props are real values (a boolean
    -- prop reads back as a Lua boolean, not the string "true").
    if ctx.object == 0 then
        engine.output("You can't see that here.")
        return
    end
    if not engine.can_see(ctx.actor, ctx.object) then
        engine.output("You can't see that here.")
        return
    end
    -- Prose lowers to a function (engine.set_prose); render it first, then fall
    -- back to a plain "description" string property, then the bare name.
    local desc = engine.prose(ctx.object)
        or engine.get_prop(ctx.object, "description")
    engine.output(desc or engine.get_prop(ctx.object, "name") or "You see nothing special about it.")
    -- Surface lit state for light sources.
    if engine.get_prop(ctx.object, "lightable") then
        if engine.get_prop(ctx.object, "lit") then
            engine.output("It is currently lit.")
        else
            engine.output("It is unlit.")
        end
    end
    -- If open or transparent, list visible contents: items whose "in" edge points
    -- at this object (incoming "in" neighbours).
    if engine.get_prop(ctx.object, "open") or engine.get_prop(ctx.object, "transparent") then
        local contents = engine.neighbors(ctx.object, "in", "in")
        local names = {}
        for _, id in ipairs(contents) do
            if engine.can_see(ctx.actor, id) then
                local nm = engine.get_prop(id, "name")
                if nm then table.insert(names, nm) end
            end
        end
        if #names > 0 then
            engine.output("Inside you see: " .. table.concat(names, ", ") .. ".")
        end
    end
end

local _h_take_handler_test = function(ctx)
    if ctx.noun == nil then return false end
    if ctx.noun.kind == "scenery" then return false end
    if ctx.noun.portable == "false" then return false end
    if not engine.can_touch(ctx.actor.entity_id, ctx.noun.entity_id) then return false end
    return true
end

local _h_take_handler_instead_of = function(ctx)
    engine.output("You can't take that.")
end

local _h_take_handler_before = function(ctx)
end

local _h_take_handler_on = function(ctx)
    if ctx.noun == nil then
        engine.output("Take what?")
        return
    end
    engine.output("You pick up " .. ctx.noun.name .. ".")
end

local _h_take_handler_after = function(ctx)
    if ctx.noun == nil then return end
    engine.move_actor(ctx.noun.entity_id, ctx.actor.entity_id)
end

local _h_take_handler_report = function(ctx)
end

local _h_drop_handler_test = function(ctx)
    if ctx.noun == nil then return false end
    -- Item is carried if its location is the actor's entity_id
    return ctx.noun.location == tostring(ctx.actor.entity_id)
end

local _h_drop_handler_instead_of = function(ctx)
    engine.output("You're not carrying that.")
end

local _h_drop_handler_on = function(ctx)
    engine.output("You drop " .. ctx.noun.name .. ".")
end

local _h_drop_handler_after = function(ctx)
    if ctx.noun == nil or ctx.room == nil then return end
    engine.move_actor(ctx.noun.entity_id, ctx.room.entity_id)
end

local _h_inventory_handler_test = function(ctx)
    if ctx.object ~= 0 then
        engine.output("You can only check your own inventory.")
        return false
    end
    return true
end

local _h_inventory_handler_on = function(ctx)
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
end

local _h_showme_handler_test = function(ctx)
    return ctx.noun ~= nil
end

local _h_showme_handler_on = function(ctx)
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
end

local _h_touch_handler_test = function(ctx)
    if ctx.object == 0 then return false end
    return engine.can_touch(ctx.actor, ctx.object)
end

local _h_touch_handler_instead_of = function(ctx)
    engine.output("You can't touch that.")
end

local _h_touch_handler_on = function(ctx)
    -- engine.call_trigger has no graph equivalent yet; fall back to default prose.
    -- (Per-object touch reactions will be revisited when the event/trigger graph model lands.)
    local name = engine.get_prop(ctx.object, "name") or "it"
    engine.output("You touch " .. name .. ". Nothing happens.")
end

local _h_fill_handler_test = function(ctx)
    -- Graph ctx: ctx.object = vessel (carried), ctx.object2 = source (reachable).
    if ctx.object == 0 or ctx.object2 == 0 then return false end
    if engine.get_prop(ctx.object, "kind") ~= "container"
       and not engine.get_prop(ctx.object, "fillable_vessel") then
        return false
    end
    if engine.get_prop(ctx.object, "filled") then return false end
    if not engine.get_prop(ctx.object2, "fillable_source")
       and engine.get_prop(ctx.object2, "kind") ~= "liquid" then
        return false
    end
    return true
end

local _h_fill_handler_instead_of = function(ctx)
    local cname = engine.get_prop(ctx.object, "name") or "it"
    if ctx.object == 0 then
        engine.output("Fill what?")
    elseif ctx.object2 == 0 then
        engine.output("Fill it with what?")
    elseif engine.get_prop(ctx.object, "filled") then
        engine.output("The " .. cname .. " is already full.")
    elseif engine.get_prop(ctx.object, "kind") ~= "container"
           and not engine.get_prop(ctx.object, "fillable_vessel") then
        engine.output("You can't fill the " .. cname .. ".")
    else
        local sname = engine.get_prop(ctx.object2, "name") or "that"
        engine.output("You can't get any of the " .. sname .. " into the " .. cname .. ".")
    end
end

local _h_fill_handler_on = function(ctx)
    -- Store the source node id as the vessel's contents (drink reads its effect).
    local cname = engine.get_prop(ctx.object, "name") or "vessel"
    local sname = engine.get_prop(ctx.object2, "name") or "source"
    engine.set_prop(ctx.object, "filled", true)
    engine.set_prop(ctx.object, "contents", ctx.object2)
    engine.output("You fill the " .. cname .. " from the " .. sname .. ". The water is shockingly cold.")
end

local _h_fill_handler_after = function(ctx)
end

local _h_fill_handler_report = function(ctx)
end

local _h_drink_handler_test = function(ctx)
    -- Graph ctx: ctx.object node id; props are real values. A filled vessel holds a
    -- contents node id; a direct source is drinkable / kind=="liquid".
    if ctx.object == 0 then return false end
    if engine.get_prop(ctx.object, "filled") then return true end
    return engine.get_prop(ctx.object, "drinkable")
        or engine.get_prop(ctx.object, "kind") == "liquid"
end

local _h_drink_handler_instead_of = function(ctx)
    local name = engine.get_prop(ctx.object, "name") or "it"
    if engine.get_prop(ctx.object, "kind") == "container"
       and not engine.get_prop(ctx.object, "filled") then
        engine.output("The " .. name .. " is empty.")
    else
        engine.output("That's not something you can drink.")
    end
end

local _h_drink_handler_on = function(ctx)
    if ctx.object == 0 then return end
    local name = engine.get_prop(ctx.object, "name") or "it"
    -- Vessel path: consume contents (a node id stored by `fill`) and empty it.
    if engine.get_prop(ctx.object, "filled") then
        local substance = engine.get_prop(ctx.object, "contents")  -- node id, or nil
        local sname = (substance and engine.get_prop(substance, "name")) or "liquid"
        engine.output("You drink from the " .. name .. ". The " .. sname
            .. " is shockingly cold and faintly sweet.")
        if substance and engine.get_prop(substance, "effect") then
            -- v0.2 condition (protection_from_frightened) auto-succeeds as flavor;
            -- engine.apply_effect lands with the condition system (#35).
            engine.output("A calm clarity settles over you. You feel steadied against fear.")
        end
        engine.set_prop(ctx.object, "filled", false)
        engine.set_prop(ctx.object, "contents", 0)
        return
    end
    -- Direct-source path: kneel and drink at the source.
    engine.output("You kneel and drink directly from the " .. name
        .. ". The water is shockingly cold and faintly sweet.")
    if engine.get_prop(ctx.object, "effect") then
        engine.output("A calm clarity settles over you. You feel steadied against fear.")
    end
end

local _h_drink_handler_after = function(ctx)
end

local _h_drink_handler_report = function(ctx)
end

local _h_buy_handler_test = function(ctx)
    return ctx.noun ~= nil
end

local _h_buy_handler_on = function(ctx)
    engine.output("You buy " .. ctx.noun.name .. ".")
end

local _h_buy_handler_after = function(ctx)
    engine.fire_event("Bought", ctx.noun.id, { actor = ctx.actor.id })
end

local _h_bite_handler_test = function(ctx)
    -- v0.1: per-verb attribute check. When kind chains and materials land
    -- (tasks #9, #24), this lookup will move into the kind/material
    -- chain so authors can mark whole kinds (food) edible/bitable
    -- without touching every verb's Test.
    if ctx.noun == nil then return false end
    return ctx.noun.edible == "true" or ctx.noun.kind == "food" or ctx.noun.bitable == "true"
end

local _h_bite_handler_instead_of = function(ctx)
    engine.output("Biting that would accomplish nothing.")
end

local _h_bite_handler_on = function(ctx)
    engine.output("You bite " .. ctx.noun.name .. ".")
end

local _h_bite_handler_after = function(ctx)
end

local _h_bite_handler_report = function(ctx)
end

local _h_blow_handler_test = function(ctx)
    -- v0.1: per-verb attribute check. When kind chains and materials land
    -- (tasks #9, #24), this lookup will move into the kind/material
    -- chain so authors can mark whole kinds (instrument) blowable
    -- without touching every verb's Test.
    if ctx.noun == nil then return false end
    return ctx.noun.blowable == "true" or ctx.noun.kind == "instrument"
end

local _h_blow_handler_instead_of = function(ctx)
    engine.output("Nothing happens.")
end

local _h_blow_handler_on = function(ctx)
    engine.output("You blow on " .. ctx.noun.name .. ".")
end

local _h_blow_handler_after = function(ctx)
end

local _h_blow_handler_report = function(ctx)
end

local _h_cut_handler_test = function(ctx)
    -- v0.1: per-verb attribute check. When kind chains and materials land
    -- (tasks #9, #24), this lookup will move into the kind/material
    -- chain so authors can mark whole kinds cuttable
    -- without touching every verb's Test.
    if ctx.noun == nil then return false end
    return ctx.noun.cuttable == "true"
end

local _h_cut_handler_instead_of = function(ctx)
    engine.output("You can't cut that.")
end

local _h_cut_handler_on = function(ctx)
    engine.output("You cut " .. ctx.noun.name .. ".")
end

local _h_cut_handler_after = function(ctx)
end

local _h_cut_handler_report = function(ctx)
end

local _h_kick_handler_test = function(ctx)
    -- v0.1: per-verb attribute check. When kind chains land (task #9),
    -- animate/kickable will be kind-level so this moves there.
    if ctx.noun == nil then return false end
    return ctx.noun.kickable == "true" or ctx.noun.animate == "true"
end

local _h_kick_handler_instead_of = function(ctx)
    engine.output("You can't kick " .. ctx.noun.name .. ".")
end

local _h_kick_handler_on = function(ctx)
    engine.output("You kick " .. ctx.noun.name .. ".")
end

local _h_kick_handler_after = function(ctx)
end

local _h_kick_handler_report = function(ctx)
end

local _h_squeeze_handler_test = function(ctx)
    -- v0.1: per-verb attribute check. When kind chains land (task #9),
    -- squeezable will be a kind-level property so this lookup moves there.
    if ctx.noun == nil then return false end
    return ctx.noun.squeezable == "true"
end

local _h_squeeze_handler_instead_of = function(ctx)
    -- Graceful no-op: squeezing is non-destructive. "It doesn't yield" is
    -- better authoring than a hard rejection for a rigid object.
    engine.output(ctx.noun.name .. " doesn't yield.")
end

local _h_squeeze_handler_on = function(ctx)
    engine.output("You squeeze " .. ctx.noun.name .. ".")
end

local _h_squeeze_handler_after = function(ctx)
end

local _h_squeeze_handler_report = function(ctx)
end

local _h_swing_handler_test = function(ctx)
    -- v0.1: per-verb attribute check. When kind chains land (task #9),
    -- weapon kinds will carry swingable implicitly so this moves there.
    if ctx.noun == nil then return false end
    return ctx.noun.swingable == "true" or ctx.noun.kind == "weapon"
end

local _h_swing_handler_instead_of = function(ctx)
    engine.output("You'd need a proper weapon to swing.")
end

local _h_swing_handler_on = function(ctx)
    engine.output("You swing " .. ctx.noun.name .. ".")
end

local _h_swing_handler_after = function(ctx)
end

local _h_swing_handler_report = function(ctx)
end

local _h_burn_handler_test = function(ctx)
    -- v0.1: per-verb attribute check. When kind chains and materials land
    -- (tasks #9, #24), this lookup will move into the kind/material
    -- chain so authors can mark whole materials flammable
    -- without touching every verb's Test.
    if ctx.noun == nil then return false end
    return ctx.noun.flammable == "true"
end

local _h_burn_handler_instead_of = function(ctx)
    engine.output("That isn't flammable.")
end

local _h_burn_handler_on = function(ctx)
    engine.output("You set fire to " .. ctx.noun.name .. ".")
end

local _h_burn_handler_after = function(ctx)
end

local _h_burn_handler_report = function(ctx)
end

local _h_dig_handler_test = function(ctx)
    -- v0.1: per-verb attribute check. When kind chains and materials land
    -- (tasks #9, #24), this lookup will move into the kind/material
    -- chain so authors can mark whole kinds (soil) diggable
    -- without touching every verb's Test.
    if ctx.noun == nil then return false end
    return ctx.noun.diggable == "true" or ctx.noun.kind == "soil"
end

local _h_dig_handler_instead_of = function(ctx)
    engine.output("You have nothing to dig with.")
end

local _h_dig_handler_on = function(ctx)
    engine.output("You dig.")
end

local _h_dig_handler_after = function(ctx)
end

local _h_dig_handler_report = function(ctx)
end

local _h_climb_handler_test = function(ctx)
    -- v0.1: per-verb attribute check. When kind chains and materials land
    -- (tasks #9, #24), this lookup will move into the kind/material
    -- chain so authors can mark whole kinds (climbable) without touching
    -- every verb's Test. Bare 'climb' without a noun uses the go-up alias.
    if ctx.noun == nil then return true end
    return ctx.noun.climbable == "true"
end

local _h_climb_handler_instead_of = function(ctx)
    engine.output("There's nothing to climb there.")
end

local _h_climb_handler_on = function(ctx)
    engine.output("You climb.")
end

local _h_climb_handler_after = function(ctx)
end

local _h_climb_handler_report = function(ctx)
end

local _h_swim_handler_test = function(ctx)
    if ctx.noun ~= nil then
        engine.output("You can't swim at a specific thing.")
        return false
    end
    local room = ctx.room
    if room == nil or room.water ~= "true" then
        return false
    end
    return true
end

local _h_swim_handler_instead_of = function(ctx)
    engine.output("There's no water here.")
end

local _h_swim_handler_on = function(ctx)
    engine.output("You swim through the water.")
end

local _h_swim_handler_after = function(ctx)
end

local _h_swim_handler_report = function(ctx)
end

local _h_jump_handler_test = function(ctx)
    return true
end

local _h_jump_handler_instead_of = function(ctx)
    engine.output("You can't jump right now.")
end

local _h_jump_handler_on = function(ctx)
    engine.output("You jump, accomplishing little.")
end

local _h_jump_handler_after = function(ctx)
end

local _h_jump_handler_report = function(ctx)
end

local _h_enter_handler_test = function(ctx)
    if ctx.noun == nil then return false end
    -- Rooms are always enterable via go mechanics.
    if ctx.noun.kind == "room" then return true end
    -- Enterable non-room containers: must be open (or have no open property).
    if ctx.noun.enterable == "true" then
        -- open == nil (no property) → treat as open for backward compat.
        -- open == "false" explicitly → refuse (closed container).
        if ctx.noun.open == "false" then return false end
        return true
    end
    return false
end

local _h_enter_handler_instead_of = function(ctx)
    if ctx.noun == nil then
        engine.output("Enter what?")
        return
    end
    if ctx.noun.kind ~= "room" and ctx.noun.enterable ~= "true" then
        engine.output("You can't enter that.")
        return
    end
    -- Closed container: refuse entry.
    if ctx.noun.open ~= nil and ctx.noun.open ~= "true" then
        engine.output(ctx.noun.name .. " is closed.")
        return
    end
end

local _h_enter_handler_on = function(ctx)
    if ctx.noun.kind == "room" then
        -- Treat as a go command targeting the room directly.
        engine.move_actor(ctx.actor.entity_id, ctx.noun.entity_id)
    else
        -- Move the actor into the enterable object.
        engine.move_actor(ctx.actor.entity_id, ctx.noun.entity_id)
        engine.output("You climb into " .. ctx.noun.name .. ".")
    end
end

local _h_enter_handler_after = function(ctx)
    -- If now inside a non-room object, describe visible contents from inside.
    local actor_ent = engine.query_entity(ctx.actor.entity_id)
    local loc_id = actor_ent and tonumber(actor_ent.location or "0") or 0
    local loc_ent = loc_id ~= 0 and engine.query_entity(loc_id) or nil
    local loc_kind = loc_ent and loc_ent.kind or nil
    if loc_kind ~= nil and loc_kind ~= "room" then
        local contents = engine.entities_in(loc_id)
        local visible = {}
        for _, e in ipairs(contents) do
            if e.entity_id ~= ctx.actor.entity_id and engine.can_see(ctx.actor.entity_id, e.entity_id) then
                table.insert(visible, e.name or "something")
            end
        end
        if #visible > 0 then
            engine.output("Also here: " .. table.concat(visible, ", ") .. ".")
        end
    end
end

local _h_enter_handler_report = function(ctx)
end

local _h_exit_handler_test = function(ctx)
    return true
end

local _h_exit_handler_instead_of = function(ctx)
    -- Determine if the actor is inside an enterable non-room object.
    local actor_ent = engine.query_entity(ctx.actor.entity_id)
    local actor_container = actor_ent and tonumber(actor_ent.location or "0") or 0
    local container_ent = actor_container ~= 0 and engine.query_entity(actor_container) or nil
    local actor_container_kind = container_ent and container_ent.kind or nil
    local in_enterable = actor_container_kind ~= nil and actor_container_kind ~= "room"
    if not in_enterable then
        local room_exits = ctx.room and ctx.room.exits or {}
        if not room_exits.outside and not room_exits.out then
            engine.output("There's nowhere to exit to.")
            return
        end
    end
end

local _h_exit_handler_on = function(ctx)
    -- Determine if the actor is inside an enterable non-room object.
    local actor_ent = engine.query_entity(ctx.actor.entity_id)
    local actor_container = actor_ent and tonumber(actor_ent.location or "0") or 0
    local container_ent = actor_container ~= 0 and engine.query_entity(actor_container) or nil
    local actor_container_kind = container_ent and container_ent.kind or nil
    local in_enterable = actor_container_kind ~= nil and actor_container_kind ~= "room"

    if in_enterable then
        -- Move actor to the containing room (the enterable object's location).
        local container_name = container_ent and container_ent.name or "it"
        local room_id = container_ent and tonumber(container_ent.location or "0") or 0
        if room_id ~= 0 then
            engine.move_actor(ctx.actor.entity_id, room_id)
            engine.output("You climb out of " .. container_name .. ".")
        else
            engine.output("You can't get out that way.")
        end
    else
        -- Follow the room's outside/out exit.
        local room_exits = ctx.room and ctx.room.exits or {}
        local dest = room_exits.outside or room_exits.out
        if dest then
            engine.move_actor(ctx.actor.entity_id, dest)
        end
    end
end

local _h_exit_handler_after = function(ctx)
end

local _h_exit_handler_report = function(ctx)
end

return {
    ["go"] = {
        name = "go",
        kind = "verb",
        name = "go",
        aliases = { "move", "walk", "travel" },
        noun = "optional",
        noun_scope = "directions",
        handler = "go_handler",
        event = "Go",
        events = { "on_enter", "on_exit" },
        prompt_no_noun = "Go which way?",
        stages = {
            test = function(ctx)
                return ctx.room ~= nil
            end,
            on = function(ctx)
                local direction = (ctx.literal ~= nil and ctx.literal ~= "") and ctx.literal or ctx.verb
                local dest_id = engine.resolve_direction(ctx.room.entity_id, direction)
                if dest_id then
                    -- Check for a door on this exit before moving.
                    -- The room's "exit_door_id:<direction>" property holds the resolved
                    -- engine entity id of the door (set during LFR post-processing).
                    local door_key = "exit_door_id:" .. direction
                    local room_entity = engine.query_entity(ctx.room.entity_id)
                    local door_id_str = room_entity and room_entity[door_key]
                    if door_id_str ~= nil then
                        local door_id = tonumber(door_id_str)
                        if door_id ~= nil then
                            local door = engine.query_entity(door_id)
                            if door ~= nil then
                                local state = door.state or "closed"
                                local passable = (state == "open" or state == "broken")
                                if not passable then
                                    -- Emit appropriate blocked prose.
                                    if state == "locked" then
                                        local prose = door.locked_prose or "It is locked."
                                        engine.output(prose)
                                    else
                                        local prose = door.closed_prose or "The way is blocked by a closed door."
                                        engine.output(prose)
                                    end
                                    return
                                end
                            end
                        end
                    end
                    engine.move_actor(ctx.actor.entity_id, dest_id)
                    -- Auto-look after movement: Report Go fires engine.dispatch("look") if supported,
                    -- otherwise the engine's after-go look hook handles it.
                else
                    engine.output("You can't go that way.")
                end
            end,
            after = function(ctx)
                -- Fire After Enter on the destination room so room-level entry triggers run.
                local direction = (ctx.literal ~= nil and ctx.literal ~= "") and ctx.literal or ctx.verb
                local dest_id = engine.resolve_direction(ctx.room and ctx.room.entity_id or 0, direction)
                if dest_id then
                    engine.call_trigger(dest_id, "after:Enter", ctx)
                end
            end,
            report = function(ctx)
                -- Trigger an automatic look after successful movement.
                -- engine.dispatch is a best-effort call; if not yet bound, movement still completes.
                if engine.dispatch then
                    engine.dispatch("look")
                end
            end,
        },
    },
    ["look"] = {
        name = "look",
        kind = "verb",
        name = "look",
        aliases = { "l" },
        noun = "optional",
        noun_scope = "visible",
        handler = "describe_current_place",
        event = "Look",
        stages = {
            test = function(ctx)
                return true
            end,
            on = function(ctx)
                -- look <noun> ≡ examine <noun> (Inform 7 convention).
                if ctx.noun ~= nil then
                    engine.dispatch("examine " .. ctx.literal)
                    return
                end

                if not ctx.room then
                    engine.output("You look around, but can't make out your surroundings.")
                    return
                end

                local level = engine.light_level(ctx.room.entity_id, ctx.actor.entity_id)
                if level == 0 then
                    engine.output("Magical darkness surrounds you. Even your torch cannot pierce it.")
                    return
                elseif level == 1 then
                    engine.output("It is pitch dark. You can't see a thing.")
                    return
                end

                -- Room display_name (player-facing label); falls back to name when absent.
                local _shown_name = (ctx.room.display_name and ctx.room.display_name ~= "") and ctx.room.display_name or ctx.room.name
                engine.output(_shown_name)
                local _room_prose = engine.call_prose(ctx.room.entity_id, "prose", ctx)
                if _room_prose and _room_prose ~= "" then
                    if level == 2 then
                        engine.output("[Dim light] " .. _room_prose)
                    else
                        engine.output(_room_prose)
                    end
                end

                -- Note daylight in outdoor rooms.
                if level == 4 and ctx.room.outdoor == "true" then
                    engine.output("Daylight filters down from above.")
                end

                -- List visible entities in the room (excluding actor and scenery).
                -- Scenery is woven into room prose by authors; it must not appear in
                -- the "You can also see:" enumeration (Inform 7 convention).
                local entities = engine.entities_in(ctx.room.entity_id)
                local visible = {}
                for _, e in ipairs(entities) do
                    if e.entity_id ~= ctx.actor.entity_id
                        and e.kind ~= "scenery"
                        and engine.can_see(ctx.actor.entity_id, e.entity_id) then
                        table.insert(visible, e)
                    end
                end

                if #visible > 0 then
                    local parts = {}
                    for _, e in ipairs(visible) do
                        local label = e.name or "something"
                        -- Describe open or transparent containers with their contents inline.
                        if e.open == "true" or e.transparent == "true" then
                            local contents = engine.entities_in(e.entity_id)
                            local cnames = {}
                            for _, item in ipairs(contents) do
                                if engine.can_see(ctx.actor.entity_id, item.entity_id) then
                                    table.insert(cnames, item.name or "something")
                                end
                            end
                            if #cnames > 0 then
                                local state = e.open == "true" and "open" or "closed"
                                label = label .. " (" .. state .. ", containing " .. table.concat(cnames, ", ") .. ")"
                            else
                                label = label .. " (" .. (e.open == "true" and "open, empty" or "closed") .. ")"
                            end
                        end
                        table.insert(parts, label)
                    end
                    engine.output("You can also see: " .. table.concat(parts, ", ") .. ".")
                end
            end,
        },
    },
    ["examine"] = {
        name = "examine",
        kind = "verb",
        name = "examine",
        aliases = { "x", "inspect" },
        phrases = { "look at", "look in", "l at", "l in" },
        connectors = { "at", "in" },
        noun = "required",
        noun_scope = "visible",
        handler = "examine_handler",
        event = "Examine",
        events = { "on_examine" },
        prompt_no_noun = "Examine what?",
        stages = {
            test = function(ctx)
                -- Graph ctx (engine-core STAGE_API.md): ctx.object is the noun node id (0 = none).
                -- (Light gating dropped — the graph engine has no light model yet.)
                if ctx.object == 0 then return false end
                return engine.can_see(ctx.actor, ctx.object)
            end,
            instead_of = function(ctx)
                -- Noun didn't resolve. (Legacy direction-word exit description is dropped until
                -- the graph engine models direction-labeled exits.)
                engine.output("You can't see that here.")
            end,
            on = function(ctx)
                -- Graph ctx: ctx.object is the noun node id; props are real values (a boolean
                -- prop reads back as a Lua boolean, not the string "true").
                if ctx.object == 0 then
                    engine.output("You can't see that here.")
                    return
                end
                if not engine.can_see(ctx.actor, ctx.object) then
                    engine.output("You can't see that here.")
                    return
                end
                -- Prose lowers to a function (engine.set_prose); render it first, then fall
                -- back to a plain "description" string property, then the bare name.
                local desc = engine.prose(ctx.object)
                    or engine.get_prop(ctx.object, "description")
                engine.output(desc or engine.get_prop(ctx.object, "name") or "You see nothing special about it.")
                -- Surface lit state for light sources.
                if engine.get_prop(ctx.object, "lightable") then
                    if engine.get_prop(ctx.object, "lit") then
                        engine.output("It is currently lit.")
                    else
                        engine.output("It is unlit.")
                    end
                end
                -- If open or transparent, list visible contents: items whose "in" edge points
                -- at this object (incoming "in" neighbours).
                if engine.get_prop(ctx.object, "open") or engine.get_prop(ctx.object, "transparent") then
                    local contents = engine.neighbors(ctx.object, "in", "in")
                    local names = {}
                    for _, id in ipairs(contents) do
                        if engine.can_see(ctx.actor, id) then
                            local nm = engine.get_prop(id, "name")
                            if nm then table.insert(names, nm) end
                        end
                    end
                    if #names > 0 then
                        engine.output("Inside you see: " .. table.concat(names, ", ") .. ".")
                    end
                end
            end,
        },
    },
    ["take"] = {
        name = "take",
        kind = "verb",
        name = "take",
        aliases = { "get", "grab" },
        phrases = { "pick up" },
        noun = "required",
        noun_scope = "reachable",
        noun_kind = "object",
        handler = "take_handler",
        event = "Take",
        events = { "on_take" },
        prompt_no_noun = "Take what?",
        stages = {
            test = function(ctx)
                if ctx.noun == nil then return false end
                if ctx.noun.kind == "scenery" then return false end
                if ctx.noun.portable == "false" then return false end
                if not engine.can_touch(ctx.actor.entity_id, ctx.noun.entity_id) then return false end
                return true
            end,
            instead_of = function(ctx)
                engine.output("You can't take that.")
            end,
            before = function(ctx)
            end,
            on = function(ctx)
                if ctx.noun == nil then
                    engine.output("Take what?")
                    return
                end
                engine.output("You pick up " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
                if ctx.noun == nil then return end
                engine.move_actor(ctx.noun.entity_id, ctx.actor.entity_id)
            end,
            report = function(ctx)
            end,
        },
    },
    ["drop"] = {
        name = "drop",
        kind = "verb",
        name = "drop",
        aliases = { "discard" },
        phrases = { "put down", "leave" },
        noun = "required",
        noun_scope = "inventory",
        handler = "drop_handler",
        event = "Drop",
        events = { "on_drop" },
        prompt_no_noun = "Drop what?",
        stages = {
            test = function(ctx)
                if ctx.noun == nil then return false end
                -- Item is carried if its location is the actor's entity_id
                return ctx.noun.location == tostring(ctx.actor.entity_id)
            end,
            instead_of = function(ctx)
                engine.output("You're not carrying that.")
            end,
            on = function(ctx)
                engine.output("You drop " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
                if ctx.noun == nil or ctx.room == nil then return end
                engine.move_actor(ctx.noun.entity_id, ctx.room.entity_id)
            end,
        },
    },
    ["put"] = {
        name = "put",
        kind = "verb",
        name = "put",
        aliases = { "place", "insert" },
        phrases = { "put in", "put on" },
        noun = "required",
        noun_scope = "inventory",
        event = "Put",
        prompt_no_noun = "Put what where?",
        stages = {
            test = function(ctx)
                return ctx.noun ~= nil and ctx.target ~= nil and (ctx.target.open ~= false)
            end,
            instead_of = function(ctx)
                engine.output("You can't put that there.")
            end,
            on = function(ctx)
                engine.output("You put " .. ctx.noun.name .. " in " .. ctx.target.name .. ".")
            end,
            after = function(ctx)
                engine.set_property(ctx.noun.id, "container", ctx.target.id)
                engine.set_property(ctx.noun.id, "at_location", nil)
            end,
        },
    },
    ["open"] = {
        name = "open",
        kind = "verb",
        name = "open",
        aliases = { "open up" },
        noun = "required",
        noun_scope = "reachable",
        noun_kind = "container",
        event = "Open",
        events = { "on_open" },
        prompt_no_noun = "Open what?",
        stages = {
            test = function(ctx)
                -- Graph ctx: ctx.object is the noun node id; props are real values (booleans,
                -- not "true"). Doors use a "state" string; containers a boolean "open".
                if ctx.object == 0 then return false end
                local kind = engine.get_prop(ctx.object, "kind")
                local openable = engine.get_prop(ctx.object, "openable")
                    or kind == "container" or kind == "door"
                if not openable then return false end
                if kind == "door" then
                    local state = engine.get_prop(ctx.object, "state") or "closed"
                    if state == "locked" or state == "open" then return false end
                else
                    if engine.get_prop(ctx.object, "locked") then return false end
                    if engine.get_prop(ctx.object, "open") then return false end
                end
                return true
            end,
            instead_of = function(ctx)
                local name = engine.get_prop(ctx.object, "name") or "it"
                local kind = engine.get_prop(ctx.object, "kind")
                local openable = engine.get_prop(ctx.object, "openable")
                    or kind == "container" or kind == "door"
                if kind == "door" then
                    local state = engine.get_prop(ctx.object, "state") or "closed"
                    if state == "locked" then
                        engine.output(name .. " is locked.")
                    elseif state == "open" then
                        engine.output(name .. " is already open.")
                    elseif not openable then
                        engine.output(name .. " isn't something you can open.")
                    else
                        engine.output(name .. " is already open.")
                    end
                elseif engine.get_prop(ctx.object, "locked") then
                    engine.output(name .. " is locked.")
                elseif not openable then
                    engine.output(name .. " isn't something you can open.")
                else
                    engine.output(name .. " is already open.")
                end
            end,
            on = function(ctx)
                local name = engine.get_prop(ctx.object, "name") or "it"
                if engine.get_prop(ctx.object, "kind") == "door" then
                    engine.set_prop(ctx.object, "state", "open")
                else
                    engine.set_prop(ctx.object, "open", true)
                end
                engine.output("You open " .. name .. ".")
            end,
            after = function(ctx)
                -- Reveal contents now that the container is open. (The engine's SEE/TOUCH scope
                -- also descends into open|transparent containers, so the contents become
                -- examinable/takeable automatically.)
                -- Exception: enterable containers (e.g. a sarcophagus you can climb inside) do
                -- not list their contents to outside observers — the player must enter.
                if engine.get_prop(ctx.object, "enterable") then return end
                local contents = engine.neighbors(ctx.object, "in", "in")
                if #contents > 0 then
                    local names = {}
                    for _, id in ipairs(contents) do
                        table.insert(names, engine.get_prop(id, "name") or "something")
                    end
                    local name = engine.get_prop(ctx.object, "name") or "It"
                    engine.output(name .. " contains: " .. table.concat(names, ", ") .. ".")
                end
            end,
        },
    },
    ["close"] = {
        name = "close",
        kind = "verb",
        name = "close",
        aliases = { "shut" },
        noun = "required",
        noun_scope = "reachable",
        noun_kind = "container",
        event = "Close",
        events = { "on_close" },
        prompt_no_noun = "Close what?",
        stages = {
            test = function(ctx)
                -- Graph ctx: ctx.object node id; real-value props. Doors use a "state" string;
                -- containers a boolean "open".
                if ctx.object == 0 then return false end
                local kind = engine.get_prop(ctx.object, "kind")
                local openable = engine.get_prop(ctx.object, "openable")
                    or kind == "container" or kind == "door"
                if not openable then return false end
                if kind == "door" then
                    if (engine.get_prop(ctx.object, "state") or "closed") ~= "open" then return false end
                else
                    if not engine.get_prop(ctx.object, "open") then return false end
                end
                return true
            end,
            instead_of = function(ctx)
                local name = engine.get_prop(ctx.object, "name") or "it"
                local kind = engine.get_prop(ctx.object, "kind")
                local openable = engine.get_prop(ctx.object, "openable")
                    or kind == "container" or kind == "door"
                if not openable then
                    engine.output(name .. " isn't something you can close.")
                else
                    engine.output(name .. " is already closed.")
                end
            end,
            on = function(ctx)
                local name = engine.get_prop(ctx.object, "name") or "it"
                if engine.get_prop(ctx.object, "kind") == "door" then
                    engine.set_prop(ctx.object, "state", "closed")
                else
                    engine.set_prop(ctx.object, "open", false)
                end
                engine.output("You close " .. name .. ".")
            end,
        },
    },
    ["attack"] = {
        name = "attack",
        kind = "verb",
        name = "attack",
        aliases = { "fight", "hit", "strike", "kill" },
        phrases = { "hit with", "strike with", "attack with" },
        noun = "required",
        noun_scope = "room",
        noun_kind = "actor",
        preposition = "with",
        preposition_aliases = { "using" },
        noun_2 = "optional",
        noun_scope_2 = "inventory",
        event = "Attack",
        prompt_no_noun = "Attack what?",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. When kind chains land (task #9),
                -- animate will be a kind-level property so this lookup moves there.
                if ctx.noun == nil then return false end
                return ctx.noun.animate == "true" or ctx.noun.attackable == "true"
            end,
            instead_of = function(ctx)
                local noun_name = (ctx.noun and ctx.noun.name) or "that"
                engine.output(noun_name .. " isn't something you can attack.")
            end,
            on = function(ctx)
                local noun_name = (ctx.noun and ctx.noun.name) or "the target"
                if ctx.noun_2 ~= nil then
                    local weapon_name = ctx.noun_2.name or "your weapon"
                    engine.output("You attack " .. noun_name .. " with " .. weapon_name .. "!")
                else
                    engine.output("You attack " .. noun_name .. "!")
                end
            end,
            after = function(ctx)
                -- Per-entity after:Attack and after:Attack With triggers are dispatched
                -- automatically by the engine bubble-chain dispatcher (TRIGGERS.md).
                -- No manual engine.call_trigger calls needed here.
            end,
        },
    },
    ["wait"] = {
        name = "wait",
        kind = "verb",
        name = "wait",
        aliases = { "z" },
        noun = "none",
        event = "Wait",
        events = { "OnWait" },
        stages = {
            test = function(ctx)
                if ctx.noun ~= nil then
                    engine.output("You can't wait at a specific thing.")
                    return false
                end
                return true
            end,
            on = function(ctx)
                engine.output("Time passes.")
            end,
        },
    },
    ["inventory"] = {
        name = "inventory",
        kind = "verb",
        name = "inventory",
        aliases = { "i", "inv" },
        noun = "none",
        handler = "inventory_handler",
        event = "Inventory",
        stages = {
            test = function(ctx)
                if ctx.object ~= 0 then
                    engine.output("You can only check your own inventory.")
                    return false
                end
                return true
            end,
            on = function(ctx)
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
            end,
        },
    },
    ["showme"] = {
        name = "showme",
        kind = "verb",
        name = "showme",
        noun = "required",
        noun_scope = "global",
        privileged = true,
        handler = "showme_handler",
        stages = {
            test = function(ctx)
                return ctx.noun ~= nil
            end,
            on = function(ctx)
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
            end,
        },
    },
    ["restart"] = {
        name = "restart",
        kind = "verb",
        name = "restart",
        noun = "none",
        privileged = true,
        handler = "restart_handler",
        stages = {
        },
    },
    ["quit"] = {
        name = "quit",
        kind = "verb",
        name = "quit",
        aliases = { "q", "exit game" },
        noun = "none",
        privileged = true,
        handler = "quit_handler",
        stages = {
        },
    },
    ["save"] = {
        name = "save",
        kind = "verb",
        name = "save",
        noun = "none",
        privileged = true,
        handler = "save_handler",
        stages = {
        },
    },
    ["restore"] = {
        name = "restore",
        kind = "verb",
        name = "restore",
        aliases = { "load" },
        noun = "none",
        privileged = true,
        handler = "restore_handler",
        stages = {
        },
    },
    ["undo"] = {
        name = "undo",
        kind = "verb",
        name = "undo",
        noun = "none",
        privileged = true,
        handler = "undo_handler",
        stages = {
        },
    },
    ["again"] = {
        name = "again",
        kind = "verb",
        name = "again",
        aliases = { "g" },
        noun = "none",
        handler = "again_handler",
        stages = {
        },
    },
    ["touch"] = {
        name = "touch",
        kind = "verb",
        name = "touch",
        aliases = { "touching", "feel", "pat" },
        noun = "required",
        noun_scope = "reachable",
        handler = "touch_handler",
        events = { "OnTouch" },
        prompt_no_noun = "Touch what?",
        event = "Touch",
        stages = {
            test = function(ctx)
                if ctx.object == 0 then return false end
                return engine.can_touch(ctx.actor, ctx.object)
            end,
            instead_of = function(ctx)
                engine.output("You can't touch that.")
            end,
            on = function(ctx)
                -- engine.call_trigger has no graph equivalent yet; fall back to default prose.
                -- (Per-object touch reactions will be revisited when the event/trigger graph model lands.)
                local name = engine.get_prop(ctx.object, "name") or "it"
                engine.output("You touch " .. name .. ". Nothing happens.")
            end,
        },
    },
    ["use"] = {
        name = "use",
        kind = "verb",
        name = "use",
        phrases = { "use on", "use with" },
        noun = "required",
        noun_scope = "reachable",
        handler = "use_handler",
        events = { "OnUse" },
        prompt_no_noun = "Use what?",
        stages = {
        },
    },
    ["fill"] = {
        name = "fill",
        kind = "verb",
        name = "fill",
        phrases = { "fill with", "fill up", "fill up with" },
        noun = "required",
        noun_scope = "inventory",
        noun_kind = "object",
        handler = "fill_handler",
        prompt_no_noun = "Fill what?",
        aliases = { "pour", "top up" },
        noun_2 = "required",
        noun_scope_2 = "reachable",
        event = "Fill",
        stages = {
            test = function(ctx)
                -- Graph ctx: ctx.object = vessel (carried), ctx.object2 = source (reachable).
                if ctx.object == 0 or ctx.object2 == 0 then return false end
                if engine.get_prop(ctx.object, "kind") ~= "container"
                   and not engine.get_prop(ctx.object, "fillable_vessel") then
                    return false
                end
                if engine.get_prop(ctx.object, "filled") then return false end
                if not engine.get_prop(ctx.object2, "fillable_source")
                   and engine.get_prop(ctx.object2, "kind") ~= "liquid" then
                    return false
                end
                return true
            end,
            instead_of = function(ctx)
                local cname = engine.get_prop(ctx.object, "name") or "it"
                if ctx.object == 0 then
                    engine.output("Fill what?")
                elseif ctx.object2 == 0 then
                    engine.output("Fill it with what?")
                elseif engine.get_prop(ctx.object, "filled") then
                    engine.output("The " .. cname .. " is already full.")
                elseif engine.get_prop(ctx.object, "kind") ~= "container"
                       and not engine.get_prop(ctx.object, "fillable_vessel") then
                    engine.output("You can't fill the " .. cname .. ".")
                else
                    local sname = engine.get_prop(ctx.object2, "name") or "that"
                    engine.output("You can't get any of the " .. sname .. " into the " .. cname .. ".")
                end
            end,
            on = function(ctx)
                -- Store the source node id as the vessel's contents (drink reads its effect).
                local cname = engine.get_prop(ctx.object, "name") or "vessel"
                local sname = engine.get_prop(ctx.object2, "name") or "source"
                engine.set_prop(ctx.object, "filled", true)
                engine.set_prop(ctx.object, "contents", ctx.object2)
                engine.output("You fill the " .. cname .. " from the " .. sname .. ". The water is shockingly cold.")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["drink"] = {
        name = "drink",
        kind = "verb",
        name = "drink",
        aliases = { "drinking", "sip", "quaff" },
        noun = "required",
        noun_scope = "reachable",
        handler = "drink_handler",
        events = { "OnUse" },
        prompt_no_noun = "Drink what?",
        event = "Drink",
        stages = {
            test = function(ctx)
                -- Graph ctx: ctx.object node id; props are real values. A filled vessel holds a
                -- contents node id; a direct source is drinkable / kind=="liquid".
                if ctx.object == 0 then return false end
                if engine.get_prop(ctx.object, "filled") then return true end
                return engine.get_prop(ctx.object, "drinkable")
                    or engine.get_prop(ctx.object, "kind") == "liquid"
            end,
            instead_of = function(ctx)
                local name = engine.get_prop(ctx.object, "name") or "it"
                if engine.get_prop(ctx.object, "kind") == "container"
                   and not engine.get_prop(ctx.object, "filled") then
                    engine.output("The " .. name .. " is empty.")
                else
                    engine.output("That's not something you can drink.")
                end
            end,
            on = function(ctx)
                if ctx.object == 0 then return end
                local name = engine.get_prop(ctx.object, "name") or "it"
                -- Vessel path: consume contents (a node id stored by `fill`) and empty it.
                if engine.get_prop(ctx.object, "filled") then
                    local substance = engine.get_prop(ctx.object, "contents")  -- node id, or nil
                    local sname = (substance and engine.get_prop(substance, "name")) or "liquid"
                    engine.output("You drink from the " .. name .. ". The " .. sname
                        .. " is shockingly cold and faintly sweet.")
                    if substance and engine.get_prop(substance, "effect") then
                        -- v0.2 condition (protection_from_frightened) auto-succeeds as flavor;
                        -- engine.apply_effect lands with the condition system (#35).
                        engine.output("A calm clarity settles over you. You feel steadied against fear.")
                    end
                    engine.set_prop(ctx.object, "filled", false)
                    engine.set_prop(ctx.object, "contents", 0)
                    return
                end
                -- Direct-source path: kneel and drink at the source.
                engine.output("You kneel and drink directly from the " .. name
                    .. ". The water is shockingly cold and faintly sweet.")
                if engine.get_prop(ctx.object, "effect") then
                    engine.output("A calm clarity settles over you. You feel steadied against fear.")
                end
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["search"] = {
        name = "search",
        kind = "verb",
        name = "search",
        aliases = { "searching", "rummage" },
        noun = "required",
        noun_scope = "reachable",
        events = { "OnSearch" },
        prompt_no_noun = "Search what?",
        event = "Search",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. When kind chains land (task #9),
                -- containers and surfaces will carry searchable implicitly.
                if ctx.object == 0 then return false end
                return engine.get_prop(ctx.object, "searchable")
                    or engine.get_prop(ctx.object, "kind") == "container"
                    or engine.get_prop(ctx.object, "kind") == "supporter"
            end,
            instead_of = function(ctx)
                if ctx.object == 0 then engine.output("Search what?") return end
                local name = engine.get_prop(ctx.object, "name") or "it"
                engine.output("There's nothing to search on " .. name .. ".")
            end,
            on = function(ctx)
                local name = engine.get_prop(ctx.object, "name") or "it"
                engine.output("You search " .. name .. ".")
            end,
        },
    },
    ["wear"] = {
        name = "wear",
        kind = "verb",
        name = "wear",
        aliases = { "wearing", "put on", "don" },
        noun = "required",
        noun_scope = "inventory",
        events = { "OnWear" },
        prompt_no_noun = "Wear what?",
        event = "Wear",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. When kind chains land (task #9),
                -- this moves into the kind chain so armour/clothing are wearable by default.
                if ctx.noun == nil then return false end
                if ctx.noun.wearable ~= "true" then return false end
                return ctx.noun.worn ~= "true"
            end,
            instead_of = function(ctx)
                if ctx.noun == nil then
                    engine.output("Wear what?")
                    return
                end
                if ctx.noun.wearable ~= "true" then
                    engine.output("You can't wear that.")
                    return
                end
                engine.output("You're already wearing " .. ctx.noun.name .. ".")
            end,
            on = function(ctx)
                engine.set_property(ctx.noun.entity_id, "worn", "true")
                engine.output("You put on " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["remove"] = {
        name = "remove",
        kind = "verb",
        name = "remove",
        aliases = { "removing", "take off", "doff" },
        noun = "required",
        noun_scope = "inventory",
        events = { "OnRemove" },
        prompt_no_noun = "Remove what?",
        event = "Remove",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. Only items currently worn by the actor
                -- can be removed.
                if ctx.noun == nil then return false end
                return ctx.noun.worn == "true"
            end,
            instead_of = function(ctx)
                if ctx.noun == nil then
                    engine.output("Remove what?")
                    return
                end
                engine.output("You aren't wearing " .. ctx.noun.name .. ".")
            end,
            on = function(ctx)
                engine.set_property(ctx.noun.entity_id, "worn", "false")
                engine.output("You take off " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["ask"] = {
        name = "ask",
        kind = "verb",
        name = "ask",
        aliases = { "asking", "question" },
        noun = "required",
        noun_scope = "reachable",
        noun_kind = "npc",
        events = { "OnAsk" },
        prompt_no_noun = "Ask whom?",
        preposition = "about",
        noun_2 = "required",
        noun_scope_2 = "topic",
        event = "Ask",
        prompt_no_noun_2 = "Ask about what?",
        stages = {
            test = function(ctx)
                if ctx.noun == nil then return false end
                if ctx.noun_2 == nil then return false end
                return true
            end,
            instead_of = function(ctx)
                if ctx.noun == nil then
                    engine.output("There's no one here to ask.")
                elseif ctx.noun_2 == nil then
                    engine.output("Ask about what?")
                else
                    local npc_name = (ctx.noun and ctx.noun.name) or "They"
                    engine.output(npc_name .. " doesn't seem to know anything about that.")
                end
            end,
            on = function(ctx)
                -- Track the last NPC asked on the actor, for use by the answer verb.
                -- engine.record_topic_heard deferred to Phase 2 knowledge envelope.
                if ctx.noun and ctx.noun.entity_id and ctx.actor and ctx.actor.entity_id then
                    engine.set_property(ctx.actor.entity_id, "last_asked_npc", tostring(ctx.noun.entity_id))
                    if ctx.noun_2 and ctx.noun_2.entity_id then
                        engine.set_property(ctx.actor.entity_id, "last_asked_topic", tostring(ctx.noun_2.entity_id))
                    end
                end
                -- Per-entity on:Ask triggers (e.g. Skull King sets awaiting_answer when asked about riddle)
                -- are dispatched automatically by the engine bubble-chain dispatcher after this On body.
                -- No manual engine.call_trigger needed here.
            end,
            after = function(ctx)
                if ctx.noun and ctx.noun.entity_id then
                    engine.fire_event("Ask", ctx.noun.entity_id, {})
                end
                -- Per-entity after:Ask and after:Ask About triggers are dispatched
                -- automatically by the engine bubble-chain dispatcher (TRIGGERS.md).
                -- No manual engine.call_trigger calls needed here.
            end,
            report = function(ctx)
                local topic = ctx.noun_2
                local npc   = ctx.noun

                -- Per-NPC topic lookup: search the NPC's direct children for a topic
                -- sub-entity whose name matches the global topic being asked about.
                local response = nil
                if npc and npc.entity_id then
                    local children = engine.entities_in(npc.entity_id)
                    if children then
                        local topic_name = topic and (topic.name or topic.id) or nil
                        for _, child in ipairs(children) do
                            if child.kind == "topic" then
                                local child_name = child.name or child.id or ""
                                if topic_name and (child_name == topic_name or
                                   child_name == (topic and topic.id)) then
                                    response = child.response
                                    break
                                end
                            end
                        end
                    end
                end

                -- Fall back to the global topic's response property.
                if response == nil and topic then
                    response = topic.response
                end

                -- Final fallback: generic decline.
                if response == nil then
                    local npc_name = (npc and npc.name) or "They"
                    response = npc_name .. " has nothing to say about that."
                end

                engine.output(response)
            end,
        },
    },
    ["answer"] = {
        name = "answer",
        kind = "verb",
        name = "answer",
        aliases = { "answering", "respond", "reply" },
        noun = "none",
        event = "Answer",
        prompt_no_noun = "Answer what?",
        stages = {
            test = function(ctx)
                -- Always dispatchable: the answer text comes from ctx.raw, not a resolved noun.
                return true
            end,
            on = function(ctx)
                -- The answer phrase is everything after the verb word in the raw command.
                local raw = ctx.raw or ""
                local phrase = raw:match("^%s*%S+%s+(.*)")
                phrase = phrase and (phrase:lower():match("^%s*(.-)%s*$")) or ""
                if phrase == "" then
                    engine.output("Answer what?")
                    return
                end

                -- Find someone in this room awaiting an answer.
                local target = 0
                local expected = nil
                if ctx.room ~= 0 then
                    for _, n in ipairs(engine.neighbors(ctx.room, "in", "in")) do
                        if n ~= ctx.actor then
                            local aw = engine.get_prop(n, "awaiting_answer")
                            if aw ~= nil and aw ~= "" then
                                target = n
                                expected = aw
                                break
                            end
                        end
                    end
                end

                if target == 0 then
                    engine.output("No one here is waiting for an answer.")
                    return
                end

                -- Match the phrase against the NPC's comma-separated accepted answers
                -- (case-insensitive; the phrase need only contain an accepted token).
                local matched = false
                for token in (expected:lower() .. ","):gmatch("([^,]*),") do
                    local t = token:match("^%s*(.-)%s*$")
                    if t ~= "" and phrase:find(t, 1, true) ~= nil then
                        matched = true
                        break
                    end
                end

                local name = engine.get_prop(target, "name") or "It"
                if matched then
                    engine.set_prop(target, "awaiting_answer", "")  -- consumed
                    -- Fire the NPC's authored reaction; fall back to a generic line.
                    local handled = engine.call_trigger(target, "on:Answer", ctx)
                    if not handled then
                        engine.output(name .. " accepts your answer.")
                    end
                else
                    engine.output(name .. " gives no sign that your answer is right.")
                end
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["tell"] = {
        name = "tell",
        kind = "verb",
        name = "tell",
        aliases = { "telling" },
        noun = "required",
        noun_scope = "reachable",
        noun_kind = "npc",
        preposition = "about",
        noun_2 = "required",
        noun_scope_2 = "topic",
        event = "Tell",
        prompt_no_noun = "Tell whom?",
        prompt_no_noun_2 = "Tell them about what?",
        stages = {
            test = function(ctx)
                if ctx.noun == nil then return false end
                if ctx.noun_2 == nil then return false end
                return true
            end,
            instead_of = function(ctx)
                if ctx.noun == nil then
                    engine.output("Tell whom?")
                elseif ctx.noun_2 == nil then
                    engine.output("Tell them about what?")
                else
                    local npc_name = (ctx.noun and ctx.noun.name) or "They"
                    engine.output(npc_name .. " doesn't seem interested.")
                end
            end,
            on = function(ctx)
                -- Track the last NPC told on the actor, for use by the answer verb.
                if ctx.noun and ctx.noun.entity_id and ctx.actor and ctx.actor.entity_id then
                    engine.set_property(ctx.actor.entity_id, "last_asked_npc", tostring(ctx.noun.entity_id))
                    if ctx.noun_2 and ctx.noun_2.entity_id then
                        engine.set_property(ctx.actor.entity_id, "last_asked_topic", tostring(ctx.noun_2.entity_id))
                    end
                end
            end,
            after = function(ctx)
                if ctx.noun and ctx.noun.entity_id then
                    engine.fire_event("Tell", ctx.noun.entity_id, {})
                end
            end,
            report = function(ctx)
                local topic = ctx.noun_2
                local npc   = ctx.noun

                -- Per-NPC topic lookup: search the NPC's direct children for a matching topic.
                local response = nil
                if npc and npc.entity_id then
                    local children = engine.entities_in(npc.entity_id)
                    if children then
                        local topic_name = topic and (topic.name or topic.id) or nil
                        for _, child in ipairs(children) do
                            if child.kind == "topic" then
                                local child_name = child.name or child.id or ""
                                if topic_name and (child_name == topic_name or
                                   child_name == (topic and topic.id)) then
                                    response = child.response
                                    break
                                end
                            end
                        end
                    end
                end

                if response == nil and topic then
                    response = topic.response
                end

                if response == nil then
                    local npc_name = (npc and npc.name) or "them"
                    local topic_name = (topic and topic.name) or "that"
                    response = "You tell " .. npc_name .. " about " .. topic_name .. "."
                end

                engine.output(response)
            end,
        },
    },
    ["think"] = {
        name = "think",
        kind = "verb",
        name = "think",
        aliases = { "thinking", "ponder", "muse" },
        noun = "none",
        event = "Think",
        stages = {
            test = function(ctx)
                if ctx.noun ~= nil then
                    engine.output("You can't think at a specific thing.")
                    return false
                end
                return true
            end,
            on = function(ctx)
                engine.output("You pause to gather your thoughts.")
            end,
        },
    },
    ["sing"] = {
        name = "sing",
        kind = "verb",
        name = "sing",
        aliases = { "singing", "hum" },
        noun = "none",
        event = "Sing",
        stages = {
            test = function(ctx)
                if ctx.noun ~= nil then
                    engine.output("You can't sing at a specific thing.")
                    return false
                end
                return true
            end,
            on = function(ctx)
                engine.output("You sing aloud.")
            end,
        },
    },
    ["consult"] = {
        name = "consult",
        kind = "verb",
        name = "consult",
        aliases = { "consulting", "refer to", "look up in" },
        noun = "required",
        noun_scope = "reachable",
        preposition = "about",
        noun_2 = "optional",
        noun_scope_2 = "topic",
        event = "Consult",
        prompt_no_noun = "Consult what?",
        stages = {
            test = function(ctx)
                return ctx.object ~= 0
            end,
            on = function(ctx)
                -- Determine response: if topic provided, try reference work's sub-entity match.
                local ref = ctx.object
                local topic = ctx.object2  -- 0 if no topic given
                local response = nil

                if topic ~= 0 then
                    -- Check if the reference work has a child entity (kind=="topic") matching this topic.
                    local children = engine.neighbors(ref, "in", "in")
                    local topic_name = engine.get_prop(topic, "name") or ""
                    for _, child in ipairs(children) do
                        if engine.get_prop(child, "kind") == "topic" then
                            local child_name = engine.get_prop(child, "name") or ""
                            if child_name == topic_name then
                                response = engine.get_prop(child, "response")
                                break
                            end
                        end
                    end
                    -- Fall back to the global topic response property.
                    if response == nil then
                        response = engine.get_prop(topic, "response")
                    end
                end

                if response == nil then
                    local ref_name = engine.get_prop(ref, "name") or "it"
                    if topic ~= 0 then
                        local topic_name = engine.get_prop(topic, "name") or "that"
                        response = "You consult " .. ref_name .. " about " .. topic_name .. " but find nothing useful."
                    else
                        response = "You consult " .. ref_name .. "."
                    end
                end

                engine.output(response)
            end,
        },
    },
    ["read"] = {
        name = "read",
        kind = "verb",
        name = "read",
        aliases = { "peruse", "study" },
        noun = "required",
        noun_scope = "reachable",
        event = "Read",
        prompt_no_noun = "Read what?",
        stages = {
            test = function(ctx)
                if ctx.object == 0 then return false end
                return engine.get_prop(ctx.object, "readable")
                    or engine.get_prop(ctx.object, "kind") == "document"
                    or engine.get_prop(ctx.object, "kind") == "book"
                    or engine.get_prop(ctx.object, "kind") == "sign"
                    or engine.get_prop(ctx.object, "kind") == "scroll"
            end,
            instead_of = function(ctx)
                if ctx.object == 0 then
                    engine.output("Read what?")
                    return
                end
                engine.output("You can't read that.")
            end,
            on = function(ctx)
                local text = engine.get_prop(ctx.object, "text")
                    or engine.get_prop(ctx.object, "inscription")
                    or engine.get_prop(ctx.object, "contents")
                    or engine.get_prop(ctx.object, "description")
                local name = engine.get_prop(ctx.object, "name") or "it"
                if text then
                    engine.output(text)
                else
                    engine.output("There is nothing written on " .. name .. ".")
                end
            end,
        },
    },
    ["listen"] = {
        name = "listen",
        kind = "verb",
        name = "listen",
        aliases = { "listening", "hear" },
        noun = "none",
        event = "Listen",
        stages = {
            test = function(ctx)
                if ctx.object ~= 0 then
                    engine.output("Listen to what? (Try: listen to <something>)")
                    return false
                end
                return true
            end,
            on = function(ctx)
                engine.output("You listen carefully.")
            end,
        },
    },
    ["buy"] = {
        name = "buy",
        kind = "verb",
        name = "buy",
        aliases = { "buying", "purchase" },
        noun = "required",
        noun_scope = "reachable",
        handler = "buy_handler",
        event = "Buy",
        prompt_no_noun = "Buy what?",
        stages = {
            test = function(ctx)
                return ctx.noun ~= nil
            end,
            on = function(ctx)
                engine.output("You buy " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
                engine.fire_event("Bought", ctx.noun.id, { actor = ctx.actor.id })
            end,
        },
    },
    ["bite"] = {
        name = "bite",
        kind = "verb",
        name = "bite",
        aliases = { "biting", "gnaw" },
        noun = "required",
        noun_scope = "reachable",
        handler = "bite_handler",
        event = "Bite",
        prompt_no_noun = "Bite what?",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. When kind chains and materials land
                -- (tasks #9, #24), this lookup will move into the kind/material
                -- chain so authors can mark whole kinds (food) edible/bitable
                -- without touching every verb's Test.
                if ctx.noun == nil then return false end
                return ctx.noun.edible == "true" or ctx.noun.kind == "food" or ctx.noun.bitable == "true"
            end,
            instead_of = function(ctx)
                engine.output("Biting that would accomplish nothing.")
            end,
            on = function(ctx)
                engine.output("You bite " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["blow"] = {
        name = "blow",
        kind = "verb",
        name = "blow",
        aliases = { "blowing", "blow on" },
        noun = "required",
        noun_scope = "reachable",
        handler = "blow_handler",
        event = "Blow",
        prompt_no_noun = "Blow what?",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. When kind chains and materials land
                -- (tasks #9, #24), this lookup will move into the kind/material
                -- chain so authors can mark whole kinds (instrument) blowable
                -- without touching every verb's Test.
                if ctx.noun == nil then return false end
                return ctx.noun.blowable == "true" or ctx.noun.kind == "instrument"
            end,
            instead_of = function(ctx)
                engine.output("Nothing happens.")
            end,
            on = function(ctx)
                engine.output("You blow on " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["cut"] = {
        name = "cut",
        kind = "verb",
        name = "cut",
        aliases = { "cutting", "slice", "slash" },
        noun = "required",
        noun_scope = "reachable",
        handler = "cut_handler",
        event = "Cut",
        prompt_no_noun = "Cut what?",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. When kind chains and materials land
                -- (tasks #9, #24), this lookup will move into the kind/material
                -- chain so authors can mark whole kinds cuttable
                -- without touching every verb's Test.
                if ctx.noun == nil then return false end
                return ctx.noun.cuttable == "true"
            end,
            instead_of = function(ctx)
                engine.output("You can't cut that.")
            end,
            on = function(ctx)
                engine.output("You cut " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["kick"] = {
        name = "kick",
        kind = "verb",
        name = "kick",
        aliases = { "kicking", "boot" },
        noun = "required",
        noun_scope = "reachable",
        handler = "kick_handler",
        event = "Kick",
        prompt_no_noun = "Kick what?",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. When kind chains land (task #9),
                -- animate/kickable will be kind-level so this moves there.
                if ctx.noun == nil then return false end
                return ctx.noun.kickable == "true" or ctx.noun.animate == "true"
            end,
            instead_of = function(ctx)
                engine.output("You can't kick " .. ctx.noun.name .. ".")
            end,
            on = function(ctx)
                engine.output("You kick " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["squeeze"] = {
        name = "squeeze",
        kind = "verb",
        name = "squeeze",
        aliases = { "squeezing", "compress", "press" },
        noun = "required",
        noun_scope = "reachable",
        handler = "squeeze_handler",
        event = "Squeeze",
        prompt_no_noun = "Squeeze what?",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. When kind chains land (task #9),
                -- squeezable will be a kind-level property so this lookup moves there.
                if ctx.noun == nil then return false end
                return ctx.noun.squeezable == "true"
            end,
            instead_of = function(ctx)
                -- Graceful no-op: squeezing is non-destructive. "It doesn't yield" is
                -- better authoring than a hard rejection for a rigid object.
                engine.output(ctx.noun.name .. " doesn't yield.")
            end,
            on = function(ctx)
                engine.output("You squeeze " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["throw_at"] = {
        name = "Throw At",
        kind = "verb",
        name = "throw",
        aliases = { "throw", "throwing", "hurl", "toss" },
        phrases = { "throw at", "throwing at", "hurl at", "toss at" },
        noun = "required",
        noun_scope = "inventory",
        preposition = "at",
        noun_2 = "required",
        noun_scope_2 = "reachable",
        event = "Throw",
        prompt_no_noun = "Throw what?",
        prompt_no_noun_2 = "Throw it at what?",
        stages = {
            test = function(ctx)
                return ctx.noun ~= nil and ctx.noun_2 ~= nil
            end,
            instead_of = function(ctx)
                engine.output("You can't throw that.")
            end,
            on = function(ctx)
                local noun_name = ctx.noun and ctx.noun.name or "it"
                local noun_2_name = ctx.noun_2 and ctx.noun_2.name or "the target"
                engine.output("You throw " .. noun_name .. " at " .. noun_2_name .. ".")
            end,
            after = function(ctx)
                -- Per-entity after:Throw and after:Throw At triggers are dispatched
                -- automatically by the engine bubble-chain dispatcher (TRIGGERS.md).
                -- No manual engine.call_trigger calls needed here.
            end,
            report = function(ctx)
            end,
        },
    },
    ["swing"] = {
        name = "swing",
        kind = "verb",
        name = "swing",
        aliases = { "swinging", "brandish", "flourish" },
        noun = "required",
        noun_scope = "inventory",
        handler = "swing_handler",
        event = "Swing",
        prompt_no_noun = "Swing what?",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. When kind chains land (task #9),
                -- weapon kinds will carry swingable implicitly so this moves there.
                if ctx.noun == nil then return false end
                return ctx.noun.swingable == "true" or ctx.noun.kind == "weapon"
            end,
            instead_of = function(ctx)
                engine.output("You'd need a proper weapon to swing.")
            end,
            on = function(ctx)
                engine.output("You swing " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["burn"] = {
        name = "burn",
        kind = "verb",
        name = "burn",
        aliases = { "burning", "ignite", "set fire to" },
        noun = "required",
        noun_scope = "reachable",
        handler = "burn_handler",
        event = "Burn",
        prompt_no_noun = "Burn what?",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. When kind chains and materials land
                -- (tasks #9, #24), this lookup will move into the kind/material
                -- chain so authors can mark whole materials flammable
                -- without touching every verb's Test.
                if ctx.noun == nil then return false end
                return ctx.noun.flammable == "true"
            end,
            instead_of = function(ctx)
                engine.output("That isn't flammable.")
            end,
            on = function(ctx)
                engine.output("You set fire to " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["dig"] = {
        name = "dig",
        kind = "verb",
        name = "dig",
        aliases = { "digging", "excavate" },
        noun = "optional",
        noun_scope = "reachable",
        handler = "dig_handler",
        event = "Dig",
        prompt_no_noun = "Dig what?",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. When kind chains and materials land
                -- (tasks #9, #24), this lookup will move into the kind/material
                -- chain so authors can mark whole kinds (soil) diggable
                -- without touching every verb's Test.
                if ctx.noun == nil then return false end
                return ctx.noun.diggable == "true" or ctx.noun.kind == "soil"
            end,
            instead_of = function(ctx)
                engine.output("You have nothing to dig with.")
            end,
            on = function(ctx)
                engine.output("You dig.")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["climb"] = {
        name = "climb",
        kind = "verb",
        name = "climb",
        aliases = { "climbing", "scale", "clamber up" },
        noun = "optional",
        noun_scope = "reachable",
        handler = "climb_handler",
        event = "Climb",
        prompt_no_noun = "Climb what?",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. When kind chains and materials land
                -- (tasks #9, #24), this lookup will move into the kind/material
                -- chain so authors can mark whole kinds (climbable) without touching
                -- every verb's Test. Bare 'climb' without a noun uses the go-up alias.
                if ctx.noun == nil then return true end
                return ctx.noun.climbable == "true"
            end,
            instead_of = function(ctx)
                engine.output("There's nothing to climb there.")
            end,
            on = function(ctx)
                engine.output("You climb.")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["swim"] = {
        name = "swim",
        kind = "verb",
        name = "swim",
        aliases = { "swimming" },
        noun = "none",
        handler = "swim_handler",
        event = "Swim",
        stages = {
            test = function(ctx)
                if ctx.noun ~= nil then
                    engine.output("You can't swim at a specific thing.")
                    return false
                end
                local room = ctx.room
                if room == nil or room.water ~= "true" then
                    return false
                end
                return true
            end,
            instead_of = function(ctx)
                engine.output("There's no water here.")
            end,
            on = function(ctx)
                engine.output("You swim through the water.")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["jump"] = {
        name = "jump",
        kind = "verb",
        name = "jump",
        aliases = { "jumping", "leap", "hop" },
        noun = "none",
        handler = "jump_handler",
        event = "Jump",
        stages = {
            test = function(ctx)
                return true
            end,
            instead_of = function(ctx)
                engine.output("You can't jump right now.")
            end,
            on = function(ctx)
                engine.output("You jump, accomplishing little.")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["enter"] = {
        name = "enter",
        kind = "verb",
        name = "enter",
        aliases = { "entering", "go into", "get in" },
        noun = "required",
        noun_scope = "reachable",
        handler = "enter_handler",
        event = "Enter",
        prompt_no_noun = "Enter what?",
        stages = {
            test = function(ctx)
                if ctx.noun == nil then return false end
                -- Rooms are always enterable via go mechanics.
                if ctx.noun.kind == "room" then return true end
                -- Enterable non-room containers: must be open (or have no open property).
                if ctx.noun.enterable == "true" then
                    -- open == nil (no property) → treat as open for backward compat.
                    -- open == "false" explicitly → refuse (closed container).
                    if ctx.noun.open == "false" then return false end
                    return true
                end
                return false
            end,
            instead_of = function(ctx)
                if ctx.noun == nil then
                    engine.output("Enter what?")
                    return
                end
                if ctx.noun.kind ~= "room" and ctx.noun.enterable ~= "true" then
                    engine.output("You can't enter that.")
                    return
                end
                -- Closed container: refuse entry.
                if ctx.noun.open ~= nil and ctx.noun.open ~= "true" then
                    engine.output(ctx.noun.name .. " is closed.")
                    return
                end
            end,
            on = function(ctx)
                if ctx.noun.kind == "room" then
                    -- Treat as a go command targeting the room directly.
                    engine.move_actor(ctx.actor.entity_id, ctx.noun.entity_id)
                else
                    -- Move the actor into the enterable object.
                    engine.move_actor(ctx.actor.entity_id, ctx.noun.entity_id)
                    engine.output("You climb into " .. ctx.noun.name .. ".")
                end
            end,
            after = function(ctx)
                -- If now inside a non-room object, describe visible contents from inside.
                local actor_ent = engine.query_entity(ctx.actor.entity_id)
                local loc_id = actor_ent and tonumber(actor_ent.location or "0") or 0
                local loc_ent = loc_id ~= 0 and engine.query_entity(loc_id) or nil
                local loc_kind = loc_ent and loc_ent.kind or nil
                if loc_kind ~= nil and loc_kind ~= "room" then
                    local contents = engine.entities_in(loc_id)
                    local visible = {}
                    for _, e in ipairs(contents) do
                        if e.entity_id ~= ctx.actor.entity_id and engine.can_see(ctx.actor.entity_id, e.entity_id) then
                            table.insert(visible, e.name or "something")
                        end
                    end
                    if #visible > 0 then
                        engine.output("Also here: " .. table.concat(visible, ", ") .. ".")
                    end
                end
            end,
            report = function(ctx)
            end,
        },
    },
    ["exit"] = {
        name = "exit",
        kind = "verb",
        name = "exit",
        aliases = { "exiting", "leave", "get out" },
        noun = "none",
        handler = "exit_handler",
        event = "Exit",
        stages = {
            test = function(ctx)
                return true
            end,
            instead_of = function(ctx)
                -- Determine if the actor is inside an enterable non-room object.
                local actor_ent = engine.query_entity(ctx.actor.entity_id)
                local actor_container = actor_ent and tonumber(actor_ent.location or "0") or 0
                local container_ent = actor_container ~= 0 and engine.query_entity(actor_container) or nil
                local actor_container_kind = container_ent and container_ent.kind or nil
                local in_enterable = actor_container_kind ~= nil and actor_container_kind ~= "room"
                if not in_enterable then
                    local room_exits = ctx.room and ctx.room.exits or {}
                    if not room_exits.outside and not room_exits.out then
                        engine.output("There's nowhere to exit to.")
                        return
                    end
                end
            end,
            on = function(ctx)
                -- Determine if the actor is inside an enterable non-room object.
                local actor_ent = engine.query_entity(ctx.actor.entity_id)
                local actor_container = actor_ent and tonumber(actor_ent.location or "0") or 0
                local container_ent = actor_container ~= 0 and engine.query_entity(actor_container) or nil
                local actor_container_kind = container_ent and container_ent.kind or nil
                local in_enterable = actor_container_kind ~= nil and actor_container_kind ~= "room"

                if in_enterable then
                    -- Move actor to the containing room (the enterable object's location).
                    local container_name = container_ent and container_ent.name or "it"
                    local room_id = container_ent and tonumber(container_ent.location or "0") or 0
                    if room_id ~= 0 then
                        engine.move_actor(ctx.actor.entity_id, room_id)
                        engine.output("You climb out of " .. container_name .. ".")
                    else
                        engine.output("You can't get out that way.")
                    end
                else
                    -- Follow the room's outside/out exit.
                    local room_exits = ctx.room and ctx.room.exits or {}
                    local dest = room_exits.outside or room_exits.out
                    if dest then
                        engine.move_actor(ctx.actor.entity_id, dest)
                    end
                end
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["eat"] = {
        name = "eat",
        kind = "verb",
        name = "eat",
        aliases = { "eating", "consume", "devour" },
        noun = "required",
        noun_scope = "inventory",
        event = "Eat",
        prompt_no_noun = "Eat what?",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. When kind chains and materials land
                -- (tasks #9, #24), this lookup will move into the kind/material
                -- chain so authors can mark whole kinds (food) edible
                -- without touching every verb's Test.
                if ctx.noun == nil then return false end
                return ctx.noun.edible == "true" or ctx.noun.kind == "food"
            end,
            instead_of = function(ctx)
                engine.output("You can't eat that.")
            end,
            on = function(ctx)
                engine.output("You eat " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["smell"] = {
        name = "smell",
        kind = "verb",
        name = "smell",
        aliases = { "smelling", "sniff", "inhale" },
        noun = "optional",
        noun_scope = "reachable",
        event = "Smell",
        prompt_no_noun = "Smell what?",
        stages = {
            test = function(ctx)
                return true
            end,
            instead_of = function(ctx)
                engine.output("You can't smell that.")
            end,
            on = function(ctx)
                if ctx.object ~= 0 then
                    local name = engine.get_prop(ctx.object, "name") or "it"
                    engine.output("You smell " .. name .. ". Nothing remarkable.")
                else
                    engine.output("You sniff the air. Nothing unusual.")
                end
            end,
        },
    },
    ["taste"] = {
        name = "taste",
        kind = "verb",
        name = "taste",
        aliases = { "tasting", "lick" },
        noun = "required",
        noun_scope = "reachable",
        event = "Taste",
        prompt_no_noun = "Taste what?",
        stages = {
            test = function(ctx)
                return ctx.object ~= 0
            end,
            instead_of = function(ctx)
                engine.output("You can't taste that.")
            end,
            on = function(ctx)
                local name = engine.get_prop(ctx.object, "name") or "it"
                engine.output("You taste " .. name .. ". Nothing remarkable.")
            end,
        },
    },
    ["sleep"] = {
        name = "sleep",
        kind = "verb",
        name = "sleep",
        aliases = { "sleeping", "rest", "nap", "lie down" },
        noun = "none",
        event = "Sleep",
        stages = {
            test = function(ctx)
                if ctx.noun ~= nil then
                    engine.output("You can't sleep at a specific thing.")
                    return true
                end
                return false
            end,
            instead_of = function(ctx)
                engine.output("You feel drowsy but this is not the time for sleep.")
            end,
            on = function(ctx)
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["wake"] = {
        name = "wake",
        kind = "verb",
        name = "wake",
        aliases = { "waking" },
        noun = "optional",
        noun_scope = "reachable",
        event = "Wake",
        prompt_no_noun = "Wake what?",
        stages = {
            test = function(ctx)
                -- No noun: reflexive wake (wake yourself) — always legal.
                if ctx.noun == nil then return true end
                if ctx.noun.animate ~= "true" then return false end
                return ctx.noun.sleeping == "true"
            end,
            instead_of = function(ctx)
                if ctx.noun == nil then
                    -- Reflexive path should never reach InsteadOf (Test returns true), but
                    -- handle it safely anyway.
                    engine.output("You are already awake.")
                    return
                end
                if ctx.noun.animate ~= "true" then
                    engine.output("You can't wake that.")
                    return
                end
                engine.output(ctx.noun.name .. " isn't asleep.")
            end,
            on = function(ctx)
                if ctx.noun then
                    engine.set_property(ctx.noun.entity_id, "sleeping", "false")
                    engine.output("You wake " .. ctx.noun.name .. ".")
                else
                    engine.output("You wake yourself.")
                end
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["wake_up"] = {
        name = "Wake Up",
        kind = "verb",
        name = "wake up",
        aliases = { "wake up", "waking up", "awaken" },
        noun = "none",
        event = "WakeUp",
        stages = {
            test = function(ctx)
                if ctx.noun ~= nil then
                    engine.output("You can only wake yourself. (To wake someone else, use: wake <name>)")
                    return true
                end
                return false
            end,
            instead_of = function(ctx)
                engine.output("You are already awake.")
            end,
            on = function(ctx)
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["look_under"] = {
        name = "Look Under",
        kind = "verb",
        name = "look under",
        aliases = { "look under", "looking under", "search under" },
        noun = "required",
        noun_scope = "reachable",
        event = "LookUnder",
        prompt_no_noun = "Look under what?",
        stages = {
            test = function(ctx)
                return ctx.object ~= 0
            end,
            instead_of = function(ctx)
                engine.output("You can't look under that.")
            end,
            on = function(ctx)
                local name = engine.get_prop(ctx.object, "name") or "it"
                engine.output("You look under " .. name .. ".")
            end,
        },
    },
    ["fix"] = {
        name = "fix",
        kind = "verb",
        name = "fix",
        aliases = { "fixing", "repair", "mend" },
        noun = "required",
        noun_scope = "reachable",
        event = "Fix",
        prompt_no_noun = "Fix what?",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. When kind chains and materials land
                -- (tasks #9, #24), this lookup will move into the kind/material
                -- chain so authors can mark whole kinds repairable
                -- without touching every verb's Test.
                if ctx.noun == nil then return false end
                return ctx.noun.broken == "true"
            end,
            instead_of = function(ctx)
                if ctx.noun == nil then
                    engine.output("Fix what?")
                    return
                end
                if ctx.noun.broken ~= "true" then
                    engine.output(ctx.noun.name .. " doesn't need fixing.")
                    return
                end
                engine.output("You can't fix that.")
            end,
            on = function(ctx)
                engine.set_property(ctx.noun.entity_id, "broken", "false")
                engine.output("You fix " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["get_off"] = {
        name = "Get Off",
        kind = "verb",
        name = "get off",
        aliases = { "get off", "getting off", "dismount", "climb off" },
        noun = "optional",
        noun_scope = "reachable",
        event = "GetOff",
        prompt_no_noun = "Get off what?",
        stages = {
            test = function(ctx)
                return true
            end,
            instead_of = function(ctx)
                engine.output("You're not on anything.")
            end,
            on = function(ctx)
                engine.output("You get off.")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["push"] = {
        name = "push",
        kind = "verb",
        name = "push",
        aliases = { "pushing", "shove", "nudge" },
        noun = "required",
        noun_scope = "reachable",
        event = "Push",
        prompt_no_noun = "Push what?",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. When kind chains land (task #9),
                -- pushable will be a kind-level property so this lookup moves there.
                if ctx.noun == nil then return false end
                return ctx.noun.pushable == "true"
            end,
            instead_of = function(ctx)
                engine.output(ctx.noun.name .. " doesn't move.")
            end,
            on = function(ctx)
                engine.output("You push " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["pull"] = {
        name = "pull",
        kind = "verb",
        name = "pull",
        aliases = { "pulling", "yank", "tug" },
        noun = "required",
        noun_scope = "reachable",
        event = "Pull",
        prompt_no_noun = "Pull what?",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. When kind chains land (task #9),
                -- pullable will be a kind-level property so this lookup moves there.
                if ctx.noun == nil then return false end
                return ctx.noun.pullable == "true"
            end,
            instead_of = function(ctx)
                engine.output(ctx.noun.name .. " doesn't budge.")
            end,
            on = function(ctx)
                engine.output("You pull " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["push_to"] = {
        name = "Push To",
        kind = "verb",
        name = "push",
        aliases = { "pushing", "shove", "slide", "move" },
        phrases = { "push to", "pushing to", "shove to", "move to", "slide to" },
        noun = "required",
        noun_scope = "reachable",
        preposition = "to",
        noun_2 = "required",
        noun_scope_2 = "reachable",
        event = "PushTo",
        prompt_no_noun = "Push what?",
        prompt_no_noun_2 = "Push it to where?",
        stages = {
            test = function(ctx)
                if ctx.noun == nil then return false end
                if ctx.noun_2 == nil then return false end
                return ctx.noun.pushable == "true"
            end,
            instead_of = function(ctx)
                if ctx.noun == nil then
                    engine.output("Push what?")
                elseif ctx.noun_2 == nil then
                    engine.output("Push it to where?")
                else
                    engine.output("You can't push that there.")
                end
            end,
            on = function(ctx)
                local noun_name = ctx.noun and ctx.noun.name or "it"
                local noun_2_name = ctx.noun_2 and ctx.noun_2.name or "there"
                engine.output("You push " .. noun_name .. " toward " .. noun_2_name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["lock"] = {
        name = "lock",
        kind = "verb",
        name = "lock",
        aliases = { "locking" },
        noun = "required",
        noun_scope = "reachable",
        event = "Lock",
        prompt_no_noun = "Lock what?",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. When kind chains land (task #9),
                -- this moves into the kind chain so doors/chests are lockable by default.
                if ctx.noun == nil then return false end
                if ctx.noun.lockable ~= "true" then return false end
                if ctx.noun.locked == "true" then return false end
                -- Require the actor to carry the matching key.
                local key_id = ctx.noun.key
                if key_id == nil then return false end
                return engine.actor_has_item(ctx.actor.entity_id, key_id)
            end,
            instead_of = function(ctx)
                if ctx.noun == nil then
                    engine.output("Lock what?")
                    return
                end
                if ctx.noun.lockable ~= "true" then
                    engine.output(ctx.noun.name .. " has no lock.")
                    return
                end
                if ctx.noun.locked == "true" then
                    engine.output(ctx.noun.name .. " is already locked.")
                    return
                end
                engine.output("You don't have the right key.")
            end,
            on = function(ctx)
                engine.set_property(ctx.noun.entity_id, "locked", "true")
                engine.output("You lock " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["unlock"] = {
        name = "unlock",
        kind = "verb",
        name = "unlock",
        aliases = { "unlocking" },
        noun = "required",
        noun_scope = "reachable",
        event = "Unlock",
        prompt_no_noun = "Unlock what?",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. When kind chains land (task #9),
                -- this moves into the kind chain so doors/chests are lockable by default.
                if ctx.noun == nil then return false end
                if ctx.noun.lockable ~= "true" then return false end
                if ctx.noun.locked ~= "true" then return false end
                -- Require the actor to carry the matching key.
                local key_id = ctx.noun.key
                if key_id == nil then return false end
                return engine.actor_has_item(ctx.actor.entity_id, key_id)
            end,
            instead_of = function(ctx)
                if ctx.noun == nil then
                    engine.output("Unlock what?")
                    return
                end
                if ctx.noun.lockable ~= "true" then
                    engine.output(ctx.noun.name .. " has no lock.")
                    return
                end
                if ctx.noun.locked ~= "true" then
                    engine.output(ctx.noun.name .. " isn't locked.")
                    return
                end
                engine.output("You don't have the right key.")
            end,
            on = function(ctx)
                engine.set_property(ctx.noun.entity_id, "locked", "false")
                engine.output("You unlock " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["tie"] = {
        name = "tie",
        kind = "verb",
        name = "tie",
        aliases = { "tying", "bind", "fasten" },
        noun = "required",
        noun_scope = "reachable",
        event = "Tie",
        prompt_no_noun = "Tie what?",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. When kind chains land (task #9),
                -- tieable will be a kind-level property so this lookup moves there.
                -- Also requires the actor to be carrying something rope-like.
                if ctx.noun == nil then return false end
                if ctx.noun.tieable ~= "true" then return false end
                -- Check actor inventory for a rope or cord.
                local has_rope = false
                if ctx.actor ~= nil and ctx.actor.inventory ~= nil then
                    for _, item_id in ipairs(ctx.actor.inventory) do
                        local item = engine.query_entity_by_id(item_id)
                        if item ~= nil and (item.rope == "true" or item.kind == "rope") then
                            has_rope = true
                            break
                        end
                    end
                end
                return has_rope
            end,
            instead_of = function(ctx)
                if ctx.noun.tieable ~= "true" then
                    engine.output("You can't tie " .. ctx.noun.name .. ".")
                else
                    engine.output("You don't have any rope.")
                end
            end,
            on = function(ctx)
                engine.output("You tie " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["turn"] = {
        name = "turn",
        kind = "verb",
        name = "turn",
        aliases = { "turning", "rotate", "twist" },
        noun = "required",
        noun_scope = "reachable",
        event = "Turn",
        prompt_no_noun = "Turn what?",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. When kind chains land (task #9),
                -- turnable will be a kind-level property (dials, valves, wheels) so
                -- this lookup moves there.
                if ctx.noun == nil then return false end
                return ctx.noun.turnable == "true"
            end,
            instead_of = function(ctx)
                -- Graceful no-op: turning is non-destructive. "It doesn't budge" reads
                -- as natural world feedback rather than a parser rejection.
                engine.output(ctx.noun.name .. " doesn't budge.")
            end,
            on = function(ctx)
                engine.output("You turn " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["turn_off"] = {
        name = "turn_off",
        kind = "verb",
        name = "turn off",
        aliases = { "turn off", "turning off", "switch off", "deactivate" },
        noun = "required",
        noun_scope = "reachable",
        event = "TurnOff",
        prompt_no_noun = "Turn off what?",
        stages = {
            test = function(ctx)
                return ctx.noun ~= nil
            end,
            instead_of = function(ctx)
                engine.output("You can't turn that off.")
            end,
            on = function(ctx)
                engine.output("You turn off " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["turn_on"] = {
        name = "turn_on",
        kind = "verb",
        name = "turn on",
        aliases = { "turn on", "turning on", "switch on", "activate" },
        noun = "required",
        noun_scope = "reachable",
        event = "TurnOn",
        prompt_no_noun = "Turn on what?",
        stages = {
            test = function(ctx)
                return ctx.noun ~= nil
            end,
            instead_of = function(ctx)
                engine.output("You can't turn that on.")
            end,
            on = function(ctx)
                engine.output("You turn on " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["wave"] = {
        name = "wave",
        kind = "verb",
        name = "wave",
        aliases = { "waving" },
        noun = "none",
        event = "Wave",
        stages = {
            test = function(ctx)
                if ctx.noun ~= nil then
                    engine.output("Wave at what? (Try: wave at <someone>)")
                    return false
                end
                return true
            end,
            on = function(ctx)
                engine.output("You wave.")
            end,
        },
    },
    ["wave_at"] = {
        name = "Wave At",
        kind = "verb",
        name = "wave at",
        aliases = { "wave at", "waving at", "beckon" },
        noun = "required",
        noun_scope = "reachable",
        event = "WaveAt",
        prompt_no_noun = "Wave at what?",
        stages = {
            test = function(ctx)
                return ctx.noun ~= nil
            end,
            instead_of = function(ctx)
                engine.output("You can't wave at that.")
            end,
            on = function(ctx)
                local noun_name = (ctx.noun and ctx.noun.name) or "them"
                engine.output("You wave at " .. noun_name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["put_on"] = {
        name = "Put On",
        kind = "verb",
        name = "put on",
        aliases = { "put on", "putting on" },
        noun = "required",
        noun_scope = "inventory",
        event = "PutOn",
        prompt_no_noun = "Put on what?",
        stages = {
            test = function(ctx)
                return ctx.noun ~= nil
            end,
            instead_of = function(ctx)
                engine.output("You can't put that on.")
            end,
            on = function(ctx)
                engine.output("You put on " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["rub"] = {
        name = "rub",
        kind = "verb",
        name = "rub",
        aliases = { "rubbing", "polish", "clean" },
        noun = "required",
        noun_scope = "reachable",
        event = "Rub",
        prompt_no_noun = "Rub what?",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. When kind chains land (task #9),
                -- rubbable will be a kind-level property so this lookup moves there.
                if ctx.noun == nil then return false end
                return ctx.noun.rubbable == "true"
            end,
            instead_of = function(ctx)
                -- Graceful no-op: rubbing is non-destructive, so "nothing happens" is
                -- better authoring than a hard rejection.
                engine.output("You rub " .. ctx.noun.name .. ". Nothing happens.")
            end,
            on = function(ctx)
                engine.output("You rub " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["shake"] = {
        name = "shake",
        kind = "verb",
        name = "shake",
        aliases = { "shaking", "rattle", "agitate" },
        noun = "required",
        noun_scope = "reachable",
        event = "Shake",
        prompt_no_noun = "Shake what?",
        stages = {
            test = function(ctx)
                -- v0.1: per-verb attribute check. When kind chains land (task #9),
                -- shakeable will be a kind-level property so this lookup moves there.
                if ctx.noun == nil then return false end
                return ctx.noun.shakeable == "true"
            end,
            instead_of = function(ctx)
                -- Graceful no-op: shaking is non-destructive. "It doesn't rattle" is
                -- more evocative than a hard rejection for a static object.
                engine.output(ctx.noun.name .. " doesn't rattle.")
            end,
            on = function(ctx)
                engine.output("You shake " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["set"] = {
        name = "set",
        kind = "verb",
        name = "set",
        aliases = { "setting", "place", "position" },
        noun = "required",
        noun_scope = "inventory",
        event = "Set",
        prompt_no_noun = "Set what?",
        stages = {
            test = function(ctx)
                -- v0.1: "set X down" requires the item to be in the actor's inventory.
                -- Note: noun_scope: inventory means the resolver only surfaces items the
                -- actor carries, so this check is belt-and-suspenders. The noun_scope
                -- guarantees a reachable item before Test fires; Test guards the case
                -- where the dispatcher is called directly (e.g. from Luau rules).
                if ctx.noun == nil then return false end
                -- "set X down" requires the item to be in the actor's inventory.
                return engine.actor_has_item(ctx.actor.entity_id, ctx.noun.entity_id)
            end,
            instead_of = function(ctx)
                if ctx.noun == nil then
                    engine.output("Set what down?")
                    return
                end
                engine.output("You aren't carrying " .. ctx.noun.name .. ".")
            end,
            on = function(ctx)
                engine.transfer_item(ctx.noun.entity_id, ctx.actor.entity_id, ctx.actor.location)
                engine.output("You set down " .. ctx.noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["set_to"] = {
        name = "set_to",
        kind = "verb",
        name = "set to",
        aliases = { "set to", "setting to", "adjust to", "configure to" },
        noun = "required",
        noun_scope = "reachable",
        second_noun = "required",
        second_noun_scope = "global",
        event = "SetTo",
        prompt_no_noun = "Set what?",
        stages = {
            test = function(ctx)
                return ctx.noun ~= nil and ctx.second_noun ~= nil
            end,
            instead_of = function(ctx)
                engine.output("You can't set that.")
            end,
            on = function(ctx)
                engine.output("You set " .. ctx.noun.name .. " to " .. ctx.second_noun.name .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["light"] = {
        name = "light",
        kind = "verb",
        name = "light",
        aliases = { "kindle", "ignite" },
        noun = "required",
        noun_scope = "reachable",
        event = "Light",
        prompt_no_noun = "Light what?",
        stages = {
            test = function(ctx)
                if ctx.noun == nil then return false end
                if ctx.noun.lightable ~= "true" and ctx.noun.flammable ~= "true" then return false end
                return ctx.noun.lit ~= "true"
            end,
            instead_of = function(ctx)
                if ctx.noun == nil or (ctx.noun.lightable ~= "true" and ctx.noun.flammable ~= "true") then
                    engine.output("That isn't something you can light.")
                elseif ctx.noun.lit == "true" then
                    engine.output("It's already lit.")
                else
                    engine.output("You can't light that.")
                end
            end,
            on = function(ctx)
                engine.set_property(ctx.noun.entity_id, "lit", "true")
                engine.output("You light the " .. (ctx.noun.name or "object") .. ". It flickers to life.")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
    ["extinguish"] = {
        name = "extinguish",
        kind = "verb",
        name = "extinguish",
        aliases = { "snuff", "douse", "put_out" },
        phrases = { "blow out" },
        noun = "required",
        noun_scope = "reachable",
        event = "Extinguish",
        prompt_no_noun = "Extinguish what?",
        stages = {
            test = function(ctx)
                if ctx.noun == nil then return false end
                return ctx.noun.lit == "true"
            end,
            instead_of = function(ctx)
                engine.output("It's not lit.")
            end,
            on = function(ctx)
                engine.set_property(ctx.noun.entity_id, "lit", "")
                engine.output("You snuff the " .. (ctx.noun.name or "object") .. ".")
            end,
            after = function(ctx)
            end,
            report = function(ctx)
            end,
        },
    },
}