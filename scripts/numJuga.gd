extends Node



var nombre = '';

func _on_btnpopupSalir_pressed():
	get_node("Hover-seleccionjugadores").visible = true


func _on_btnsalir_pressed():
	get_tree().quit()



func _on_1Jugador_pressed():
	get_node("1Jugador").set_pressed_no_signal(true)


func _on_TextureButton_pressed():
	nombre = get_node("txtNombre").text
	if nombre.is_valid_identifier():
		print("String contains only letters")
		get_tree().change_scene("res://tablero/tablero.tscn")
	else:
		print("String contains non-letter characters")
		get_node("incorrecto").visible = true


func _on_btnokincorrecto_pressed():
	get_node("incorrecto").visible = false
