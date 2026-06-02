# Core Combat Events

**Default** kind: event

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
