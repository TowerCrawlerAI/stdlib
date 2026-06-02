# Core UI Panels

Default side-panel tab declarations for the TUI. Higher layers add their own
panels (Character, Spells); floors may re-declare any panel by matching its
`tab-id` to override or extend it.

### Inventory Panel

- kind: ui-panel
- tab-id: inventory
- title: Inventory
- order: 10

Lists everything the player is currently carrying. Floors that track
categories of items (quest items, cursed gear, consumables) can
re-declare this panel and add or override sections.

#### Sections

##### Carried Items

- kind: ui-section
- source: player.inventory
- renderer: item-list

All portable objects currently in the player's possession.
