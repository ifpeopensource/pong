extends Node

var pontos = Global.pontos
var cor: = 0.0

var explosion = preload("res://src/explosion.tscn")

func _process(delta):
	$map.modulate = Color.from_hsv(cor, 0.7, 0.5)
	cor += delta * 0.03
	if cor > 1:
		cor = 0

func goal(player: bool, position: Vector2):
	if player:
		pontos[0] += 1
	else:
		pontos[1] += 1
	$Camera._shake()
	$CanvasLayer/Control/Label.text = "%s / %s" % [pontos[0], pontos[1]]
	$Explosion.play()
	
	var expl = explosion.instance()
	expl.position = position
	add_child(expl)
	expl.emitting = true
	
	if pontos[0] or pontos[1] >= 2:
		Global.pontos = pontos
		get_tree().change_scene("res://src/GameOver.tscn")

func _ready():
	$Bot.player = Global.multiplayers
