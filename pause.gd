extends CanvasLayer

func _input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == Input.is_action_pressed("pause"):
			get_tree().paused = not get_tree().paused
		if get_tree().paused:
			$Popup.popup()
		else:
			$Popup.hide()
