
extends Node2D

var teleport = false

func _ready():
	set_process_input(true)
	set_fixed_process(true)

func start():
	var ball = get_node("ball")
	ball.set_pos(Vector2(250,300))
	ball.set_linear_velocity(Vector2(0,0))
	teleport = false

func _fixed_process(delta):
	if teleport:
		start()
		
func _input(event):
	if event.is_action_pressed("ui_cancel"):
		teleport = true


