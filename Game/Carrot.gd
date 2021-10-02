extends RigidBody2D
signal hit

export var min_speed = 150 # Minimum speed
export var max_speed = 250 # Maximum speed
export var speed = 5000
var direction = Vector2()

func _ready():
	randomize()
	direction.x = rand_range(0, 1)
	direction.y = rand_range(0, 1)

func _process(delta):
	var velocity = speed * delta * direction
	move_and_slide(velocity)
	
	if get_slide_count() > 0:
		var collision = get_slide_collision(0)
		if collision != null:
			direction = direction.bounce(collision.normal)

func _on_Carrot_body_entered(body):
	pass # Replace with function body.
