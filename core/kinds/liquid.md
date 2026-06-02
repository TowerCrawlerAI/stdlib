# Liquid Kind

**Default** kind: kind_definition

### liquid

- kind: kind_definition
- name: liquid
- ancestor: object
- attributes:
  - needs: identifier
  - effect: identifier
  - duration: string
  - charges: integer

A substance that cannot be picked up directly. `take <liquid>` routes to
`fill <container> with <liquid>` instead. If `needs: container` is declared,
the fill verb requires the player to carry a portable container. Supports
`drink` directly when no container is needed.
