# Topic Kind

**Default** kind: kind_definition

### topic

- kind: kind_definition
- name: topic
- ancestor: entity
- attributes:
  - aliases: list
  - response: string
  - condition: string

A conversation topic that a player can ask or tell an NPC about. Topics are
resolved globally (topic scope bypasses room scope), so they do not need to be
placed in a room. Authors declare topics as H5 sub-entities under the NPC's H3
for per-NPC responses, or as standalone H3 entities for global topics any NPC
can reference.

The `response` property is the prose the NPC emits when asked about this topic.
The optional `condition` property is a Luau expression string evaluated against
the current `ctx`; if false the topic is treated as unknown. Absent `condition`
means always available.
