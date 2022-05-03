extends CanvasLayer

signal continue_button_pressed

func _input(event):
	if event is InputEventKey:
		if Input.is_action_pressed("pause"):
			pause()

func pause():
	get_tree().paused = not get_tree().paused
	if get_tree().paused:
		$Popup.popup()
	else:
		$Popup.hide()


func _on_continueButton_continue_button_pressed():
	pause()


func _on_Popup_popup_hide():
	pause()
