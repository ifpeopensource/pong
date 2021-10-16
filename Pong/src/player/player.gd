extends KinematicBody2D

var axis: = Vector2()
var move: = Vector2()
var speed: = 250
var rodaroda = PI / 6

func _physics_process(delta):
	position.x = 25
	move = move_and_slide(axis * speed)
	rotation += rodaroda * delta * ( Input.get_action_strength("d") - Input.get_action_strength("a"))

func _unhandled_input(event):
	axis = Vector2(0, Input.get_action_strength("s") - Input.get_action_strength("w"))
