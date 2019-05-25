extends KinematicBody2D

export var speed: int = 10

func _process(delta):
	if Input.is_action_pressed(name + "_down"):
		move_and_collide(Vector2(0,1) * speed)
	if Input.is_action_pressed(name + "_up"):
		move_and_collide(Vector2(0,-1) * speed)
