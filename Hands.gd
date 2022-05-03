extends Area2D

func _ready():
	visible = false
	
func _physics_process(delta):
	if $player_detection.is_colliding() or $player_detection2.is_colliding():
		visible = true
		#set_collision_mask_bit(0, 0)
		$AnimationPlayer.play("reach")
		#$CollectSound.play()

func _on_AnimationPlayer_animation_finished(anim_name):
	visible = false


func _on_hands_body_entered(body):
	print("caught")
	body.caught()
