# Core Social Events

**Default** kind: event

### On Ask

- kind: event
- name: OnAsk

Fired when an actor initiates dialogue with an NPC. Payload: `actor`, `target`.

### On Flag Set

- kind: event
- name: OnFlagSet

Fired when a world flag is set to true. Payload: `flag`.

### On Wait

- kind: event
- name: OnWait

Fired when an actor passes their turn without acting. Payload: `actor`.
