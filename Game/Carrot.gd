extends RigidBody2D
signal hit

export var speed = 5000
var direction = Vector2()

func _ready():
	randomize()
	direction.x = rand_range(0, 1)
	direction.y = rand_range(0, 1)

func _process(delta):
	var velocity = speed * delta * direction

func _on_Carrot_body_entered(body):
	pass # Replace with function body.
