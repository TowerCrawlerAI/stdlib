# Core Abstract Kinds

**Default** kind: kind_definition

Abstract root kinds — the meta-vocabulary every higher layer builds on.
These kinds have no game attributes; they establish the inheritance hierarchy.

### Kind Definition

- kind: kind_definition
- name: kind_definition
- ancestor: entity

The meta-kind. An entity whose declaration produces a new kind that other
entities can adopt. Every `### X` under a `## Kinds` section in any stdlib
layer is itself a `kind_definition`. Reserved properties on a kind definition:
`name` (the canonical kind id, lowercase identifier), `ancestor` (the parent
kind id or the literal `null` for top-level non-entity kinds).

### Entity

- kind: kind_definition
- name: entity
- ancestor: null
- attributes:
  - id: identifier
  - name: string
  - prose: string

The root of the entity-tree kind hierarchy. Anything with an id, a name, and
prose. Every kind whose `ancestor` chain bottoms out at `entity` is part of
the world's contents — places, actors, objects, encounters, quests, and so on.

### Place

- kind: kind_definition
- name: place
- ancestor: entity
- attributes:
  - exits: dict
  - contents: list

An entity that contains other entities — a room, an area, a region, a plane.
Places carry exits to other places and contents (entities currently inside).

### Actor

- kind: kind_definition
- name: actor
- ancestor: entity
- attributes:
  - at_location: link

An entity that can take actions on its turn. Creatures, player characters,
NPCs, monsters, summoned constructs all derive from `actor`. Higher layers
add ability scores, HP, and condition mechanics.

### Object

- kind: kind_definition
- name: object
- ancestor: entity
- attributes:
  - at_location: link
  - portable: boolean

An entity that can be carried, used, contained, or otherwise interacted with
as a passive participant. Items, props, scenery. The distinction from `actor`
is that an object never takes its own turn.

### Relationship

- kind: kind_definition
- name: relationship
- ancestor: null

A typed edge between two entities — `contained_in`, `allied_with`, `knows`,
`owns`. Relationships are first-class: they have an id, a type, and two
endpoints. The runtime materializes them as bidirectional indices.
