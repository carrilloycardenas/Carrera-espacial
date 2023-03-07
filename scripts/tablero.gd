extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var a = "Daniel"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Fondo-espacio-dado/lbl-player1").text = str(a)
	get_node("Fondo-espacio-dado/lbl-player2").visible = false
