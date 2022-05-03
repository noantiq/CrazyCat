extends Control

func _ready():
	$Music.play()


func _on_changed_scene():
	$Music.stop()
