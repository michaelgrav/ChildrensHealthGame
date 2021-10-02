extends KinematicBody2D

export var speed = 400 # How fast the player will move
var screen_size # Size of the game window

# Called when a node enters the scene tree
func _ready():
	screen_size = get_viewport_rect().size

# Called every frame
func _process(delta):
	var velocity = Vector2() # Player's movement vector
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	
	position += velocity * delta
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
	
func _on_Ball_body_enter(body):
	if body.is_in_group("brick"):
		body.queue_free()
