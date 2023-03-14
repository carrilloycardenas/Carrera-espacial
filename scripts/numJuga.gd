extends Node





func _on_btnpopupSalir_pressed():
	get_node("Hover-seleccionjugadores").visible = true


func _on_btnsalir_pressed():
	get_tree().quit()
