extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




func _on_Area2D_area_entered(area):
	queue_free()


func _on_Area2D_body_entered(body):
	if body.is_in_group("ball"):
		queue_free()
