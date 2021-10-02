extends RigidBody2D
signal hit

export var speed = 50
var direction = Vector2()

func _ready():
	apply_impulse(Vector2(), Vector2(1,1).normalized() * speed)
	set_bounce(1)

func _process(delta):
	var velocity = speed * delta * direction

func _on_Carrot_body_entered(body):
	pass # Replace with function body.
