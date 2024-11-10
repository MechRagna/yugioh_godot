extends Node

var current_state = GameState.INICIAL

enum CardType {
	MONSTER,
	SPELL,
	TRAP
}

enum CardState {
	ATTACK,
	DEFENSE
}

enum MonsterType {
	NORMAL,
	EFFECT
}

enum BoardZone {
	MONSTER_ZONE,
	MAGIC_TRAP_ZONE
}

enum GameState {
	INICIAL,
	DRAW_PHASE,
	STAND_BY_PHASE,
	MAIN_PHASE,
	BATTLE_PHASE,
	SECOND_MAIN_PHASE,
	END_PHASE
}


func get_current_state() -> GameState:
	return current_state


func set_current_state(state: GameState) -> GameState:
	current_state = state
	return current_state
