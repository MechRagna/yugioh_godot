extends Node2D
class_name Board

@onready var monster_zone: HBoxContainer = $CanvasLayer/MonsterZone
@onready var magic_trap_zone: HBoxContainer = $CanvasLayer/MagicTrapZone
@onready var hand_zone: HBoxContainer = $CanvasLayer/Hand
@export var dragon_card: YugiohCard = load("res://resources/yugioh_cards/blue_eyes_white_dragon.tres")
@onready var card_scene: PackedScene = load("res://scenes/card/card.tscn")

func _ready() -> void:
	self.add_card_in_hand(dragon_card)
	self.add_card_in_hand(dragon_card)
	self.add_card_in_hand(dragon_card)
	self.add_card_in_hand(dragon_card)
	self.add_magic_trap(dragon_card)
	self.add_magic_trap(dragon_card)
	self.add_magic_trap(dragon_card)
	self.add_magic_trap(dragon_card)
	self.add_monster(dragon_card)
	self.add_monster(dragon_card)
	self.add_monster(dragon_card)
	self.add_monster(dragon_card)

func add_monster(card: YugiohCard) -> void:
	var card_instance = card_scene.instantiate() as Card
	card_instance.card = card
	monster_zone.add_child(card_instance)

func add_magic_trap(card: YugiohCard) -> void:
	var card_instance = card_scene.instantiate() as Card
	card_instance.card = card
	magic_trap_zone.add_child(card_instance)

func add_card_in_hand(card: YugiohCard) -> void:
	var card_instance = card_scene.instantiate() as Card
	card_instance.card = card
	hand_zone.add_child(card_instance)
