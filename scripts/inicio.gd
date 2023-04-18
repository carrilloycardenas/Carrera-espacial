extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_btnjugar_pressed():
	get_tree().change_scene("res://menus/numJugadores.tscn")


func _on_btnsalir_pressed():
	get_node("salir").visible = true


func _on_btnsalirpopup_pressed():
	get_tree().quit()


func _on_btnregresar_pressed():
	get_node("salir").visible = false
