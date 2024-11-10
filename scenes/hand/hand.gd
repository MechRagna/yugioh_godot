extends Node2D
class_name Hand

@export var hand: Array[YugiohCard] = []
@export var deck: Deck

func pick_cards(num_of_cards: int) -> void:
	for i in range(num_of_cards):
		var new_card = deck.draw_card()
		hand.append(new_card)
