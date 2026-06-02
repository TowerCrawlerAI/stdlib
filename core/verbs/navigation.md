# Navigation Direction Shortcuts

**Default** kind: verb

Direction shortcut aliases — each expands to `go <direction>` at dispatch
time. Not separate verbs; just registered via `engine.register_verb_alias`
so `"north"` → verb `go`, literal `"north"` etc. No verb-table entry is
emitted for these; they live entirely in the alias layer.

- **Understand** "north" as "go north"
- **Understand** "n" as "go north"
- **Understand** "south" as "go south"
- **Understand** "s" as "go south"
- **Understand** "east" as "go east"
- **Understand** "e" as "go east"
- **Understand** "west" as "go west"
- **Understand** "w" as "go west"
- **Understand** "up" as "go up"
- **Understand** "u" as "go up"
- **Understand** "down" as "go down"
- **Understand** "d" as "go down"
- **Understand** "in" as "go in"
- **Understand** "inside" as "go in"
- **Understand** "enter room" as "go in"
- **Understand** "out" as "exit"
- **Understand** "outside" as "go out"
- **Understand** "go outside" as "go out"
