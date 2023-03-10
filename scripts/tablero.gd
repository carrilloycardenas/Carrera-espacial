extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var rng = RandomNumberGenerator.new()
#var file = (File.new())
#var json = JSON.parse(f.get_as_text())
var players = [
	{"name": "Daniel",
	"dice": 0,
	"position": [579,546]},
	{"name": "Carrillo",
	"dice": 0,
	"position": [579,546]},
	{"name": "Elizabeth",
	"dice": 0,
	"position": [579,546]},
	{"name": "Elvira",
	"dice": 0,
	"position": [579,546]}
	]
	
onready var astro1 = get_node("astro1")

# Called when the node enters the scene tree for the first time.
func _ready():
	for n in range(players.size()):
		get_node("Fondo-espacio-dado/lbl-player"+str(n+1)).text = str(players[n])
	
func _on_btntirar_pressed():
	astro1.avanzar(rng.randi_range(1,6))

func _on_CheckButton_pressed():
	OS.window_fullscreen = !OS.window_fullscreen

func _on_btnsalir_pressed():
	get_node("Hover-seleccionjugadores").visible = true


func _on_TextureButton_pressed():
	get_tree().quit()


func _on_btnregresar_pressed():
	get_node("Hover-seleccionjugadores").visible = false

