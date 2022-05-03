extends Area2D

signal thrown_off

func _on_AnimationPlayer_animation_finished(anim_name):
	emit_signal("thrown_off")
	queue_free()

func _on_item_body_entered(body):
	set_collision_mask_bit(0, 0)
	$AnimationPlayer.play("fall")
	$CollectSound.play()
