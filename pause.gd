extends CanvasLayer

func _input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_P:
			get_tree().paused = not get_tree().paused
		if get_tree().paused:
			$Popup.popup()
		else:
			$Popup.hide()
