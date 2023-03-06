extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var a = "Player1"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Fondo-espacio-dado/Label").text = str(a)
