extends Node2D
class_name Board

@onready var monster_zone: HBoxContainer = $CanvasLayer/MonsterZone
@onready var magic_trap_zone: HBoxContainer = $CanvasLayer/MagicTrapZone
@onready var hand_zone: HBoxContainer = $CanvasLayer/Hand

func add_monster(card: YugiohCard) -> void:
	print(card.name)

func add_magic_trap(card: YugiohCard) -> void:
	print(card.name)

func add_card_in_hand(card: Node2D) -> void:
	print(card.name)
	hand_zone.add_child(card)
