extends RigidBody2D

func _ready():
	$EnemyAlien.connect("area_entered", self, "hit")

func hit(object):
	if object.name != 'WoodenBlock':
		print("Enemy Alien destroyed!")
		queue_free()
