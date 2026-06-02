# Core Exploration Events

**Default** kind: event

### On Enter

- kind: event
- name: OnEnter

Fired when an actor enters a place. Payload: `actor` (the entity entering),
`place` (the destination), `from_place` (the prior location or null).

### On Exit

- kind: event
- name: OnExit

Fired when an actor leaves a place. Payload: `actor`, `place` (the place
being left), `to_place` (the destination or null).

### On Move

- kind: event
- name: OnMove

Fired when an actor moves (exploration or combat). Payload: `actor`, `from_place`, `to_place`.

### On Search

- kind: event
- name: OnSearch

Fired when an actor searches a container or area. Payload: `actor`, `target`.

### On Examine

- kind: event
- name: OnExamine

Fired when an actor examines an entity. Payload: `actor`, `target` (the
entity being examined).

### On Touch

- kind: event
- name: OnTouch

Fired when an actor touches an entity. Payload: `actor`, `target`.
