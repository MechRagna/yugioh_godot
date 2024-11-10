extends Node2D
class_name Deck

@export var deck: Array[YugiohCard] = []

func shuffle() -> void:
	deck.shuffle()
	pass

func draw_card() -> YugiohCard:
	var card = deck.pop_front()
	return card
