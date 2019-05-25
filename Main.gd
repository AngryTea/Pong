extends Node2D

const Ball = preload("res://Ball.tscn")

var ball;

var inPause = true

func ballReset():
	ball = Ball.instance()
	ball.position = Vector2(1050 / 2, 600 / 2)
	ball.name = "Ball"
	add_child(ball)
	inPause = true

func _ready():
	ballReset()

func _input(event):
	if Input.is_action_pressed("ui_accept") and inPause:
		inPause = false
		ball.start()
		