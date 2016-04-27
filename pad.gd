
extends RigidBody2D

onready var pos = get_pos()

export var side = 1

var dir = -1

func _ready():
	set_fixed_process(true)

func up():
	dir = -1

func down():
	dir = 1

func _fixed_process(delta):
	set_pos(pos)
	set_angular_velocity(side*dir*2)