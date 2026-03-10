extends Area2D


@onready var laser = preload("res://scenes/laser.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("player_down") and position.y < 625:
		position.y += 10
	if Input.is_action_pressed("player_up") and position.y > 20:
		position.y -= 10
	if Input.is_action_just_pressed("shoot"):
		#Make Laser
		var laser = laser.instantiate()
		laser.position = position
		get_parent().add_child(laser)
