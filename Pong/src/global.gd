extends Node

var multiplayers
var pontos = [0 , 0]

func start(multiplayer):
	multiplayers = multiplayer
	get_tree().change_scene("res://src/Arena.tscn")
	
