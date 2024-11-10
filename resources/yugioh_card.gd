extends Resource
class_name YugiohCard

@export var id: int = 1
@export var name: String = ""
@export var level: int = 1
@export var attack: int = 0
@export var defense: int = 0
@export var card_type: Global.CardType = Global.CardType.MONSTER
@export var description: String = ""
@export var state: Global.CardState = Global.CardState.ATTACK
@export var back_card: Texture
@export var front_card: Texture

func switch_to_attack_mode(card: Sprite2D, cardAnimation: AnimationPlayer) -> void:
	card.texture = front_card
	state = Global.CardState.ATTACK
	print(name + " cambió a modo ataque.")

func switch_to_defense_mode(card: Sprite2D, cardAnimation: AnimationPlayer) -> void:
	card.texture = back_card
	state = Global.CardState.DEFENSE
	print(name + " cambió a modo defensa.")

func use_effect() -> void:
	print(name + " investigar como activaria un efecto.")
