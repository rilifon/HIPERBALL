
extends Node2D

func _ready():
	set_process_input(true)

func start():
	pass

func _input(event):
	var ball = get_node("ball")
	ball.set_pos(Vector2(250,300))
	ball.set_linear_velocity(Vector2(0,0))

