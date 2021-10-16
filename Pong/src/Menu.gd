extends Node


func _on_Jogar1_button_down():
	Global.start(false)
	
	
func _on_Jogar2_button_down():
	Global.start(true)
	
	
func _on_Sair_button_down():
	get_tree().quit()
	
