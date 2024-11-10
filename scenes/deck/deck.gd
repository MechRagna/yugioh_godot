extends Node2D
class_name Deck

@export var deck: Array[YugiohCard] = []
#@export var dragon_card: YugiohCard = load("res://resources/yugioh_cards/blue_eyes_white_dragon.tres")

#func _ready() -> void:
	#for i in range(5):
		#deck.append(dragon_card)
	#
	#var pick_card = self.draw_card()
	#print(pick_card.name)


func shuffle() -> void:
	deck.shuffle()
	pass

func draw_card() -> YugiohCard:
	var card = deck.pop_front()
	return card
