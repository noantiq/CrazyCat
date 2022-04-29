extends CanvasLayer

var coins = 0
var coins_win = 4

func _ready():
	$Coins.text = String(coins)

func _on_coin_collected():
	coins += 1
	_ready()
	if coins == coins_win:
		get_tree().change_scene("res://menus/Win.tscn")


func _on_Hands_hands_caught_player():
	pass # Replace with function body.
