extends Node2D

@onready var board: Board = $Board
@onready var deck: Deck = $Deck
@onready var card_scene: PackedScene = load("res://scenes/card/card.tscn")
@onready var deck_fake: Array[YugiohCard] = []


func _ready() -> void:
	fill_deck()
	deck.deck = deck_fake
	for i in range(5):
		var drawn_card_data: YugiohCard = deck.draw_card()
		var card_instance = card_scene.instantiate() as Card
		card_instance.card = drawn_card_data
		board.add_card_in_hand(card_instance)

func play_monster() -> void:
	pass

func fill_deck() -> void:
	for i in range(20):
		var new_card_data = Card.new()
		deck_fake.append(new_card_data)
