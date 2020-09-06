extends RigidBody2D

func _on_Alien_body_entered(body):
	if body.get_groups().has("Floor"):
		linear_velocity = Vector2 (0,0)
		angular_velocity = 0
