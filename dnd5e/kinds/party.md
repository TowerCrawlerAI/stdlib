# Party Kind

## Kinds

### Party

- kind: kind_definition
- name: party
- ancestor: entity
- attributes:
  - allegiance: string
  - brain: string
  - source: string
  - members: list
  - hirelings: list
  - weights: dict

> A roster of Characters competing on the leaderboard. Authored in FML;
> stable across the campaign. Carries party-level personality weights,
> marching order (members list), and the brain implementation key.
