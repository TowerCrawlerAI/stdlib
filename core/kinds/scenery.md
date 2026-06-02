# Scenery Kind

**Default** kind: kind_definition

### scenery

- kind: kind_definition
- name: scenery
- ancestor: item
- attributes:
  - portable: boolean

An immovable prop that is part of the room's physical description. Players
can examine and interact with scenery but cannot take it. The portable
attribute defaults to false; the InsteadOf Take trigger on item already
handles the refusal for any entity with portable: false.
