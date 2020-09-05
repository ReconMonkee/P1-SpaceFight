extends Position2D

export (PackedScene) var Ball

export var cannonStrength = 1

func _process(delta):
	look_at(get_global_mouse_position())
	rotation_degrees = clamp(rotation_degrees, -90, 0)

func _input(event):
	if event is InputEventMouseButton:
		if(event.pressed):
			var friendlyAlien = spawn_alien()
			

func spawn_alien():
	var alien = Ball.instance()
	get_node("/root").add_child(alien)
	alien.position = $Tip.global_position
	alien.set_z_index(-1)
	return alien

func launch_alien(alien, mousePosition):
	var toMouse = mousePosition - alien.position
	var cannonStraight = Vector2(toMouse.length(), 0).rotated(rotation)
	var firingForce = cannonStraight * cannonStrength
	alien.apply_impulse(Vector2.ZERO, firingForce)
