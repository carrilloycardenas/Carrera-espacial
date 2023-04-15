extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var rng = RandomNumberGenerator.new()
var file = File.new()
var player = 0
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
onready var astro2 = get_node("astro2")
var preguntas = {}
# Called when the node enters the scene tree for the first time.
func _ready():
	file.open("res://scripts/quest.json", File.READ)
	#print(file.get_as_text())
	var json = parse_json(file.get_as_text())
	preguntas = json
	#print(json.preg1.pregunta)
	for n in range(players.size()):
		get_node("Fondo-espacio-dado/lbl-player"+str(n+1)).text = str(players[n].name)
	
func _on_btntirar_pressed():
	var dado = rng.randi_range(1,6)
	get_node("Fondo-espacio-dado/spriteDado/dado").play()
	yield(get_tree().create_timer(3.0), "timeout")
	get_node("Fondo-espacio-dado/spriteDado/dado").stop()
	get_node("Fondo-espacio-dado/spriteDado/dado").frame = (dado-1)
	if player == 0:
		astro1.avanzar(dado)
		player = 1
	elif player == 1:
		astro2.avanzar(dado)
		player = 0

func _on_CheckButton_pressed():
	OS.window_fullscreen = !OS.window_fullscreen

func _on_btnsalir_pressed():
	get_node("salir").visible = true


func _on_TextureButton_pressed():
	get_tree().quit()


func _on_btnregresar_pressed():
	get_node("salir").visible = false
	
func preg():
	get_node("pregunta").visible = true
	var nPreg = rng.randi_range(1,10)
	$pregunta/lblRes1.text = preguntas.preg1.incorrecta1
	$pregunta/lblRes2.text = preguntas.preg1.correcta
	$pregunta/lblRes3.text = preguntas.preg1.incorrecta2
	$pregunta/lblPreg.text = preguntas.preg1.pregunta
	
#func _ready():
#    play_animation_once()





func _on_btnokcorrecto_pressed():
	get_node("correcto").visible = false
