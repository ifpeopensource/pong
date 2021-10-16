extends KinematicBody2D

onready var ball = get_parent().get_node("ball")

var move: Vector2
var max_speed = 250
var dir: int
var player = false
var rodaroda = PI / 6

func _physics_process(delta):
	position.x = 1255
	
	if !player:
		if ball.position.y > position.y:
			dir = 1
		else:
			dir = -1
		move.y = move_toward(move.y, dir * max_speed, delta * 200)
	else:
		move.y = (Input.get_action_strength("down") - Input.get_action_strength("up")) * max_speed
	move = move_and_slide(Vector2(0, move.y))
	rotation += rodaroda * delta * ( Input.get_action_strength("right") - Input.get_action_strength("left"))
