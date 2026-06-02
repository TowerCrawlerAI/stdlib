# Core System Kinds

**Default** kind: kind_definition

System-internal kind definitions: events, verbs, and UI layout primitives.
These are non-entity kinds (ancestor: null) used by the runtime infrastructure.

### Event

- kind: kind_definition
- name: event
- ancestor: null
- attributes:
  - payload: dict

Anything that happens to or because of an entity. Events have a name (e.g.
`on_damaged`, `on_round_start`, `on_cast`) and a payload. The runtime's
event bus dispatches events to subscribed triggers (H6 handlers on entities
and sub-entities); see `docs/design/RUNTIME.md`.

### Verb

- kind: kind_definition
- name: verb
- ancestor: null
- attributes:
  - name: identifier
  - aliases: list
  - phrases: list
  - noun: identifier
  - noun_scope: identifier
  - noun_kind: identifier
  - literal_noun: string
  - handler: identifier
  - events: list
  - prompt_no_noun: string

A grammar rule + handler binding. The runtime reads every entity of kind
`verb` at boot and routes player input through them. `noun` is the arity
(`none`, `optional`, `required`, `literal`); `noun_scope` is one of
`room`, `inventory`, `reachable`, `global`, `directions` and tells the
dispatcher which entities the noun can refer to; `noun_kind` (optional)
filters those entities; `handler` is a key into the runtime's handler
registry. See `docs/design/VERBS.md` for the full model.

### UI Panel

- kind: kind_definition
- name: ui-panel
- ancestor: null
- attributes:
  - tab-id: identifier
  - title: string
  - order: integer

A TUI side-panel tab declaration. Entities of this kind are read by
`PanelRegistry.from_floor()` at startup and rendered as tabs in the
side panel. `tab-id` is the canonical merge key — floors that re-declare
a panel with the same `tab-id` override the stdlib default per FML merge
rules. `title` overrides the tab label shown to the player (defaults to
the entity name). `order` controls position in the strip (lower = earlier;
ties broken alphabetically). Sub-entities of kind `ui-section` define
the panel's content sections.

### UI Section

- kind: kind_definition
- name: ui-section
- ancestor: null
- attributes:
  - source: string
  - renderer: identifier

A content section within a `ui-panel`. `source` is a dotted path into
the world model (e.g. `player.inventory`; stub until data models exist).
`renderer` names a Python renderer registered in the TUI
(`text`, `item-list`, `stat-block`, `spell-list`).
