extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	bbcode_text = "Welcome to your game of life! On this adventure you will be making everyday life desicions but virtually."


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button2_pressed():
	get_tree().change_scene("res://option1.tscn")



func _on_Button_pressed():
	get_tree().change_scene("res://option2.tscn")
