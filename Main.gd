extends Node2D

const Ball = preload("res://Ball.tscn")


func ballReset():
	var ball = Ball.instance()
	ball.position = OS.get_real_window_size() / 2
	add_child(ball)