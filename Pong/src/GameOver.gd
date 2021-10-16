extends Node

var pontos = Global.pontos

func _ready():
	if pontos[0] > pontos[1]:
		$p1.visible = true
		$p2.visible = false
	else:
		$p1.visible = false
		$p2.visible = true
