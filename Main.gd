extends Node2D

const Ball = preload("res://Ball.tscn")

var ball;

var inPause = true

func ballReset():
	ball = Ball.instance()
	ball.position = OS.get_real_window_size() / 2
	ball.name = "Ball"
	add_child(ball)
	inPause = true

func _ready():
	ballReset()

func _input(event):
	if Input.is_action_pressed("ui_accept"):
		inPause = false
		ball.start()
		