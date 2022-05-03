extends Button

signal continue_button_pressed

func _pressed():
	emit_signal("continue_button_pressed")
