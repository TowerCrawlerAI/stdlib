# Core Combat Events

**Default** kind: event

> **v0.2 note:** These event *definitions* live in core so that the `attack` verb
> (core) can fire `Attack` and so floor authors can register `OnDamaged`/`OnActorDied`
> handlers without coupling to the dnd5e package. However, the **handlers that give
> these events mechanical effect** (damage rolls, condition application, encounter
> loop) are all v0.2 and live in `dnd5e/`. In a pure v0.1 deployment, these events
> are fired but produce no state change beyond what authored triggers provide.

### On Attack

- kind: event
- name: OnAttack

Fired when a combat attack resolves. Payload: `attacker`, `target`, `weapon`.

### On Damaged

- kind: event
- name: OnDamaged

Fired when an actor takes damage. Payload: `actor`, `damage`, `damage_type`, `is_crit`.

### On Actor Died

- kind: event
- name: OnActorDied

Fired when an actor's HP drops to 0 or below. Payload: `actor`, `killer`.

### On Combat Start

- kind: event
- name: OnCombatStart

Fired when an encounter begins. Payload: `encounter`.

### On Combat End

- kind: event
- name: OnCombatEnd

Fired when an encounter ends. Payload: `encounter`, `outcome`.

### On Round Start

- kind: event
- name: OnRoundStart

Fired at the start of each combat round. Payload: `encounter`, `round_number`.
