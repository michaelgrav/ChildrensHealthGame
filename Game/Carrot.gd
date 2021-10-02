extends KinematicBody2D
signal hit

export var speed = 50
var direction = Vector2(200, 200)


func _physics_process(delta):
	var collison_info = move_and_collide(direction * delta)
	if collison_info:
		direction = direction.bounce(collison_info.normal)
		$AudioStreamPlayer.play()

func _on_Carrot_body_entered(body):
	pass # Replace with function body.
