extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var players = ["Daniel", "Carrillo", "Eli", "Elvira"]
@onready var astro1 = get_node("astro1")

# Called when the node enters the scene tree for the first time.
func _ready():
	for n in range(players.size()):
		get_node("Fondo-espacio-dado/lbl-player"+str(n+1)).text = str(players[n])
	
func _on_btntirar_pressed():
	var res = randi_range(1,6)
	print(res)
	astro1.avanzar(res)

func _on_CheckButton_pressed():
	get_window().mode = Window.MODE_EXCLUSIVE_FULLSCREEN if (!((get_window().mode == Window.MODE_EXCLUSIVE_FULLSCREEN) or (get_window().mode == Window.MODE_FULLSCREEN))) else Window.MODE_WINDOWED

func _on_btnsalir_pressed():
	get_tree().quit()
