extends Node2D

@onready var board: Board = $Board
@onready var deck: Deck = $Deck
@onready var hand: Hand = $Hand
#@onready var card_scene: PackedScene = preload("res://scenes/card/card.tscn")
@onready var deck_fake: Array[YugiohCard] = []


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var card_scene: PackedScene = load("res://scenes/card/card.tscn")
	fill_deck()
	deck.deck = deck_fake
	var drawn_card_data: YugiohCard = deck.draw_card()
	# Instancia la escena de la carta y establece los datos de la carta
	print(typeof(card_scene))
	print_debug()
	var card_instance = card_scene.instance() as Card
	card_instance.card = drawn_card_data  # Aquí asignamos el data al nodo de la carta
	board.add_card_in_hand(card_instance)

func play_monster() -> void:
	pass

func fill_deck() -> void:
	for i in range(20):
		# Crea una nueva instancia de YugiohCard
		var new_card_data = YugiohCard.new()
		new_card_data.name = "Card Name %s" % i  # Puedes dar valores de ejemplo
		new_card_data.level = i + 1
		new_card_data.description = "This is card %s" % i
		deck_fake.append(new_card_data)
