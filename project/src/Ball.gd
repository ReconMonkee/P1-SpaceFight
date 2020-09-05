extends RigidBody2D

var strength = 0
var dragging
var drag_start = Vector2()


func _input(event):
	if event.is_action_pressed("click") and not dragging:
		dragging = true
		drag_start = get_global_mouse_position()
		get_tree().call_group("Ball", "add_gravity")
	if event.is_action_released("click") and dragging:
		dragging = false
		var drag_end = get_global_mouse_position()
		var dir = drag_start - drag_end
		apply_impulse(Vector2(), dir * 6)

