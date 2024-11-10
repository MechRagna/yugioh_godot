extends Node2D
class_name Card

@export var card: YugiohCard = load("res://resources/yugioh_cards/blue_eyes_white_dragon.tres")
@onready var cardSprite: Sprite2D = $CardSprite
@onready var cardAnimation: AnimationPlayer = $CardAnimation

func _ready() -> void:
	if card:
		print(card.name)

func attack() -> void:
	card.switch_to_attack_mode(cardSprite, cardAnimation)

func defense() -> void:
	pass