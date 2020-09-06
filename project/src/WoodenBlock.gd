extends RigidBody2D

func _ready():
	$WoodenBlock.connect("area_entered", self, "hit")

func hit(object):
	if object.name != 'EnemyAlien':
		print("Block is hit!")
		queue_free()
