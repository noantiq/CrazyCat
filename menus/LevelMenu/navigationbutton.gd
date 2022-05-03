extends Button

export var destination = ""

func _pressed():
	print("res://" + destination + ".tscn")
	get_tree().change_scene("res://" + destination + ".tscn")
