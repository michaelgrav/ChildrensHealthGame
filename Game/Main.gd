extends Node2D
var score
var scence = preload("res://Brick.tscn")



func _physics_process(delta):
	pass
	
	
func _ready():
	var instance = scence.instance()
	instance.rand()
	add_child(instance)


func generate():
	print("Generating")
