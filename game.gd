
extends Node2D

var teleport = false
onready var pad_left  = get_node("pad_left")
onready var pad_right = get_node("pad_right")

func _ready():
	set_process_input(true)
	set_fixed_process(true)
	start()

func start():
	var ball = get_node("ball")
	ball.set_pos(Vector2(250,300))
	ball.set_linear_velocity(Vector2(-80,200))
	teleport = false

func _fixed_process(delta):
	if teleport:
		start()

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		teleport = true
	elif event.is_action_pressed("ui_left"):
		pad_left.up()
	elif event.is_action_released("ui_left"):
		pad_left.down()
	if event.is_action_pressed("ui_right"):
		pad_right.up()
	elif event.is_action_released("ui_right"):
		pad_right.down()
