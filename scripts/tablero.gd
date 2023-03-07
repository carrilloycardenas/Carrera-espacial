extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var a = "Daniel"
var b = "carrillo"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Fondo-espacio-dado/lbl-player1").text = str(a)
	get_node("Fondo-espacio-dado/lbl-player2").text = str(b)
	get_node("Fondo-espacio-dado/lbl-player1").visible = true
	get_node("Fondo-espacio-dado/lbl-player2").visible = true
	get_node("Fondo-espacio-dado/lbl-player3").visible = false
	get_node("Fondo-espacio-dado/lbl-player4").visible = false
	
