# TowerAI Core World Model

[kinds](kinds/index.md)
[events](events/index.md)
[verbs](verbs/index.md)
[items](items/index.md)

- version: 0.1.0
- layer: 1
- name: core

Layer 1 of the FML standard library: the system-agnostic world model. Defines the meta-vocabulary every higher layer uses — entity, place, actor, object, relationship, event, and the meta-kind `kind_definition` itself. Has no notion of HP, ability scores, or D&D specifics; those belong in a Layer 2 game-rule-system package.

Everything in here is built from first principles: a `kind_definition` is itself an entity that declares a kind; the kind hierarchy bottoms out at `entity` (the root) or at `null` (for kinds that aren't part of the entity-tree — relationships and events).

## Section to Kind

The bare core defaults — higher layers (e.g. dnd5e) override these with kind ids appropriate to their rule system. Heading casing here is canonical emission casing; lookup is case-insensitive.

- People: actor
- Items: object
- Rooms: place
- Events: event
- Verbs: verb

## Subsection to Kind

Even the abstract world model needs subsection mappings — H4 grouping headings
that resolve their H5 children to a default kind. Core provides a minimal set;
the dnd5e layer adds Actions/Traits/Spells/etc. on top.

- Contents: entity
- Exits: relationship
- Supporters: scenery
- Triggers: trigger

## Reserved Property Keys

Property keys recognized by the engine itself, distinct from kind-specific
attributes (which are declared per kind, see `kinds/`). Every entity may carry
these regardless of kind; the engine consumes them rather than the stdlib's
per-kind logic. Authors are free to add their own keys; only those listed here
have engine meaning.

- hidden: DM-only mechanic note (DC check, secret trigger). String or list.
- adjudicator: Scoring or DM-side adjudication note. String or list.
- complete: Quest-completion predicate (mini-language). String parsed to predicate tree.
- discovery: Quest/info-discovery predicate. String parsed to predicate tree.
- kind: Explicit kind override for the section-heading heuristic. Identifier.
- start_location: On the floor's top-level property list — id of the room where the player starts. Identifier.
- exits: On a place entity — sub-dict mapping direction names to entity-link strings. Used by the runtime to wire navigation.
- when: Trigger guard predicate (raw string). H6 trigger property; fires trigger body only when true.
- carried_by: Actor entity id that holds this item at floor start. Containment relation.
- inside: Container entity id this item is inside at floor start. Containment relation.
- on: Surface entity id this item is resting on at floor start. Containment relation.
- portable: Whether the entity can be picked up. Boolean; default true for object kind, false for scenery.
- at_location: Place entity id where this actor or object starts. Overrides link-heuristic bootstrap.
