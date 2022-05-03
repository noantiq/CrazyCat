extends Node2D

export var show_collisions = false

func _ready():
	get_tree().set_debug_collisions_hint(show_collisions)
