extends Area2D

signal thrown_off

var body_entered = false

func _on_AnimationPlayer_animation_finished(anim_name):
	emit_signal("thrown_off")
	queue_free()

func _process(delta):
	if body_entered and Input.is_action_pressed("kick"):
		print("kick")
		set_collision_mask_bit(0, 0)
		$AnimationPlayer.play("fall")
		$CollectSound.play()

func _on_item_body_entered(body):
	print("entered")
	body_entered = true	


func _on_item_body_exited(body):
	body_entered = false
