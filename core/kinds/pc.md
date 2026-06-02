# PC Kind

**Default** kind: kind_definition

Player-character kind. Extends actor with the first-person aliases (`me`,
`myself`, `self`, `i`) that the IF parser convention requires, and a
default examine prose. Floor authors do not declare pc entities explicitly;
the Python CLI creates one dynamically at session start via
`engine.create_named_entity("Player", "pc")`, then reads these defaults
from the kind definition to initialise the player entity.

### pc

- kind: kind_definition
- name: pc
- ancestor: actor
- default_aliases: [me, myself, self, i]
- default_prose: As good-looking as ever.
- attributes:
  - hp: integer
  - hp_max: integer
  - ac: integer
  - at_location: link
  - inventory: list

The player-character kind. Any entity of kind `pc` is treated by the
engine as the active player actor: its id is the implicit noun when the
player types `me`, `myself`, `self`, or `i`. The default examine prose
("As good-looking as ever.") is the Inform 7 conventional placeholder;
floor authors may override it by passing a custom prose string at
session creation time.
