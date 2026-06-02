# Core Object Events

**Default** kind: event

### On Take

- kind: event
- name: OnTake

Fired when an actor picks up an object. Payload: `actor`, `target` (the
object taken), `from_place` (where it was).

### On Drop

- kind: event
- name: OnDrop

Fired when an actor drops a carried object. Payload: `actor`, `target` (the
object dropped), `to_place` (where it lands).

### On Use

- kind: event
- name: OnUse

Fired when an actor uses an object. Payload: `actor`, `target` (the object
used), `with_target` (a secondary target, or null).

### On Open

- kind: event
- name: OnOpen

Fired when an actor opens something (door, chest, container). Payload: `actor`, `target`.

### On Close

- kind: event
- name: OnClose

Fired when an actor closes something. Payload: `actor`, `target`.

### On Wear

- kind: event
- name: OnWear

Fired when an actor dons an item. Payload: `actor`, `target`.

### On Remove

- kind: event
- name: OnRemove

Fired when an actor doffs a worn item. Payload: `actor`, `target`.
