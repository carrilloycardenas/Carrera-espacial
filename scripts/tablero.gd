extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var rng = RandomNumberGenerator.new()


var file = File.new()
var player = 0
var hola = false
var currPos = [[580.8,505.6],[602.133,505.6]]
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
	
onready var astro2 = get_node("astro2")
var preguntas = {}
var function_save = null
var preg_state = false
var ans_state = false
# Called when the node enters the scene tree for the first time.
func _ready():
	print(currPos)
	$astro1.position = Vector2(currPos[0][0],currPos[0][1])
	$astro2.position = Vector2(currPos[1][0],currPos[1][1])
	rng.seed = OS.get_system_time_msecs()
	file.open("res://scripts/quest.json", File.READ)
	#print(file.get_as_text())
	var json = parse_json(file.get_as_text())
	preguntas = json
	#print(json.preg1.pregunta)
	for n in range(players.size()):
		get_node("Fondo-espacio-dado/lbl-player"+str(n+1)).text = str(players[n].name)
	
func _on_btntirar_pressed():
	var dado = rng.randi_range(1,6)
	if hola == false:
		get_node("Fondo-espacio-dado/spriteDado/dado").play()
		yield(get_tree().create_timer(3.0), "timeout")
		get_node("Fondo-espacio-dado/spriteDado/dado").stop()
		get_node("Fondo-espacio-dado/spriteDado/dado").frame = (dado-1)
	if player == 0 && hola == false:
		function_save = avanzar(dado)
	elif player == 1 && hola == false:
		function_save = avanzar(dado)
	else:
		function_save.resume()
	
func _on_CheckButton_pressed():
	OS.window_fullscreen = !OS.window_fullscreen

func _on_btnsalir_pressed():
	get_node("salir").visible = true


func _on_btnregresar_pressed():
	get_node("salir").visible = false
	
func preg():
	if(preg_state):
		preg_state = false
		return ans_state
	else:
		get_node("pregunta").visible = true
		var nPreg = rng.randi_range(1,10)
		var name = preguntas.get("preg"+str(nPreg))
		$pregunta/lblRes1.text = name.incorrecta2
		$pregunta/lblRes2.text = name.correcta
		$pregunta/lblRes3.text = name.incorrecta1
		$pregunta/lblPreg.text = name.pregunta
		return false
	
func compPreg():
	# Comprobar casilla de agujero o cohete
	# Casilla 19
	if currPos[player][0] > 528 && currPos[player][0] < 556 && currPos[player][1] < 487 && currPos[player][1] > 427:
		return 19
	# Casilla 32
	elif currPos[player][0] > 188 && currPos[player][0] < 220 && currPos[player][1] > 330 && currPos[player][1] < 390:
		return 32
	# Casilla 67
	elif currPos[player][0] > 284 && currPos[player][0] < 316 && currPos[player][1] > 184 && currPos[player][1] < 244:
		return 67
	# Casilla 73
	elif currPos[player][0] > 238 && currPos[player][0] < 266 && currPos[player][1] > 136 && currPos[player][1] < 196:
		return 73
	# Casilla 25
	elif currPos[player][0] > 384 && currPos[player][0] < 412 && currPos[player][1] > 378 && currPos[player][1] < 438:
		return 25
	# Casilla 46
	elif currPos[player][0] > 332 && currPos[player][0] < 364 && currPos[player][1] > 281 && currPos[player][1] < 341:
		return 46
	# Casilla 71
	elif currPos[player][0] > 140 && currPos[player][0] < 168 && currPos[player][1] > 136 && currPos[player][1] < 196:
		return 71
	# Casilla 95
	elif currPos[player][0] > 332 && currPos[player][0] < 364 && currPos[player][1] > 39 && currPos[player][1] < 99:
		return 95
	#siNadaSeCumple
	else:
		return null


	
func avanzar(dado):
	# Movimiento en el tablero
	for i in range(dado):
		yield(get_tree().create_timer(1.0), "timeout")
		if currPos[player][0] > 172.5 && currPos[player][1] > 475 && currPos[player][1] < 535.6:
			currPos[player][0] -= 48.5
		# Arriba - Casilla 10
		elif currPos[player][0] < 172.5 && currPos[player][0] > 112.5 && currPos[player][1] > 475 && currPos[player][1] < 535.6:
			currPos[player][1] -= 48.5
		elif currPos[player][0] < 541 && currPos[player][1] > 456 && currPos[player][1] < 520.5:
			currPos[player][0] += 48.5
		# Arriba - Casilla 20
		elif currPos[player][0] > 541 && currPos[player][0] < 601 && currPos[player][1] < 487 && currPos[player][1] > 427:
			currPos[player][1] -= 48.5
		elif currPos[player][0] > 172.5 && currPos[player][1] > 378 && currPos[player][1] < 438:
			currPos[player][0] -= 48.5
		# Arriba - Casilla 30
		elif currPos[player][0] < 172.5 && currPos[player][0] > 112.5 && currPos[player][1] > 378 && currPos[player][1] < 438:
			currPos[player][1] -= 48.5
		elif currPos[player][0] < 541 && currPos[player][1] > 330 && currPos[player][1] < 390:
			currPos[player][0] += 48.5
		# Arriba - Casilla 40
		elif currPos[player][0] > 541 && currPos[player][0] < 601 && currPos[player][1] > 330 && currPos[player][1] < 390:
			currPos[player][1] -= 48.5
		elif currPos[player][0] > 172.5 && currPos[player][1] > 281 && currPos[player][1] < 341:
			currPos[player][0] -= 48.5
		# Arriba - Casilla 50
		elif currPos[player][0] < 172.5 && currPos[player][0] > 112.5 && currPos[player][1] > 281 && currPos[player][1] < 341:
			currPos[player][1] -= 48.5
		elif currPos[player][0] < 541 && currPos[player][1] > 233 && currPos[player][1] < 293:
			currPos[player][0] += 48.5
		# Arriba - Casilla 60
		elif currPos[player][0] > 541 && currPos[player][0] < 601 && currPos[player][1] > 233 && currPos[player][1] < 293:
			currPos[player][1] -= 48.5
		elif currPos[player][0] > 172.5 && currPos[player][1] > 184 && currPos[player][1] < 244:
			currPos[player][0] -= 48.5
		# Arriba - Casilla 70
		elif currPos[player][0] < 172.5 && currPos[player][0] > 112.5 && currPos[player][1] > 184 && currPos[player][1] < 244:
			currPos[player][1] -= 48.5
		elif currPos[player][0] < 541 && currPos[player][1] > 136 && currPos[player][1] < 196:
			currPos[player][0] += 48.5
		# Arriba - Casilla 80
		elif currPos[player][0] > 541 && currPos[player][0] < 601 && currPos[player][1] > 136 && currPos[player][1] < 196:
			currPos[player][1] -= 48.5
		elif currPos[player][0] > 172.5 && currPos[player][1] > 87 && currPos[player][1] < 147:
			currPos[player][0] -= 48.5
		# Arriba - Casilla 90
		elif currPos[player][0] < 172.5 && currPos[player][0] > 112.5 && currPos[player][1] > 87 && currPos[player][1] < 147:
			currPos[player][1] -= 48.5
		elif currPos[player][0] < 541 && currPos[player][1] > 39 && currPos[player][1] < 99:
			currPos[player][0] += 48.5
		$astro1.position = Vector2(currPos[0][0],currPos[0][1])
		$astro2.position = Vector2(currPos[1][0],currPos[1][1])
	
	if compPreg() != null:
		preg()
	else: 
		if player == 0:
			player = 1
		elif player == 1:
			player = 0
	



func _on_btnokcorrecto_pressed():
	get_node("correcto").visible = false


func _on_btnsalirpopup_pressed():
	get_tree().quit()


func _on_btnRegRes_pressed():
	print('holasientro')
	print($pregunta/btnRes2.pressed)
	if($pregunta/btnRes2.pressed):
		var casilla = compPreg()
		if casilla == 19:
			currPos[player][0]-=(48.5 * 4)
			currPos[player][1]-=(48.5 * 5)
		elif casilla == 32:
			currPos[player][0]+=(48.5)
			currPos[player][1]-=(48.5 * 2)
		elif casilla == 67:
			currPos[player][0]+=(48.5 * 6)
			currPos[player][1]-=(48.5 * 3)
		elif casilla == 73:
			currPos[player][0]-=(48.5 * 2)
			currPos[player][1]-=(48.5 * 2)
		else:
			print('Las serpientes')
			
	preg_state = true
	$pregunta.visible = false
	#print(function_save)
	if player == 0:
		player = 1
	elif player == 1:
		player = 0
