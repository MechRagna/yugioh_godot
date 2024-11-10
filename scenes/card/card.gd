extends Node2D
class_name Card

@export var card: YugiohCard
@onready var cardSprite: Sprite2D = $Container/CardSprite
@onready var cardAnimation: AnimationPlayer = $Container/CardAnimation

func attack() -> void:
	print(card.attack)
	card.switch_to_attack_mode(cardSprite, cardAnimation)

func defense() -> void:
	pass
