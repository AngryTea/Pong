extends KinematicBody2D

export var speed: int = 10
export var points: int = 0

func _process(delta):
	if Input.is_action_pressed(name + "_down"):
		move_and_collide(Vector2(0,1) * speed)
	if Input.is_action_pressed(name + "_up"):
		move_and_collide(Vector2(0,-1) * speed)

func addPoints():
	# TODO: Points greater 10 - Winner is
	points +=1
	