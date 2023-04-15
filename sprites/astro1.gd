extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var currPos = [580.8,505.6]
var dice = 0

# Called when the node enters the scene tree for the first time.
func _input(event):
	if event.is_action_pressed("ui_right"):
		currPos[0] += 48.5
		#get_node("Sprite2D").look_at(self.position + Vector2(1,0))
	elif event.is_action_pressed("ui_left"):
		currPos[0] -= 48.5
		#get_node("Sprite2D").look_at(self.position + Vector2(-1,0))
	elif event.is_action_pressed("ui_up"):
		currPos[1] -= 48.5
		#get_node("Sprite2D").look_at(self.position + Vector2(0,-1))
	elif event.is_action_pressed("ui_down"):
		currPos[1] += 48.5
		#get_node("Sprite2D").look_at(self.position + Vector2(0,1))
		
	self.position = Vector2(currPos[0], currPos[1])
	print(currPos)

func avanzar(dado):
	# Movimiento en el tablero
	for i in range(dado):
		yield(get_tree().create_timer(1.0), "timeout")
		if currPos[0] > 172.5 && currPos[1] > 475 && currPos[1] < 535.6:
			currPos[0] -= 48.5
		# Arriba - Casilla 10
		elif currPos[0] < 172.5 && currPos[0] > 112.5 && currPos[1] > 475 && currPos[1] < 535.6:
			currPos[1] -= 48.5
		elif currPos[0] < 541 && currPos[1] > 456 && currPos[1] < 520.5:
			currPos[0] += 48.5
		# Arriba - Casilla 20
		elif currPos[0] > 541 && currPos[0] < 601 && currPos[1] < 487 && currPos[1] > 427:
			currPos[1] -= 48.5
		elif currPos[0] > 172.5 && currPos[1] > 378 && currPos[1] < 438:
			currPos[0] -= 48.5
		# Arriba - Casilla 30
		elif currPos[0] < 172.5 && currPos[0] > 112.5 && currPos[1] > 378 && currPos[1] < 438:
			currPos[1] -= 48.5
		elif currPos[0] < 541 && currPos[1] > 330 && currPos[1] < 390:
			currPos[0] += 48.5
		# Arriba - Casilla 40
		elif currPos[0] > 541 && currPos[0] < 601 && currPos[1] > 330 && currPos[1] < 390:
			currPos[1] -= 48.5
		elif currPos[0] > 172.5 && currPos[1] > 281 && currPos[1] < 341:
			currPos[0] -= 48.5
		# Arriba - Casilla 50
		elif currPos[0] < 172.5 && currPos[0] > 112.5 && currPos[1] > 281 && currPos[1] < 341:
			currPos[1] -= 48.5
		elif currPos[0] < 541 && currPos[1] > 233 && currPos[1] < 293:
			currPos[0] += 48.5
		# Arriba - Casilla 60
		elif currPos[0] > 541 && currPos[0] < 601 && currPos[1] > 233 && currPos[1] < 293:
			currPos[1] -= 48.5
		elif currPos[0] > 172.5 && currPos[1] > 184 && currPos[1] < 244:
			currPos[0] -= 48.5
		# Arriba - Casilla 70
		elif currPos[0] < 172.5 && currPos[0] > 112.5 && currPos[1] > 184 && currPos[1] < 244:
			currPos[1] -= 48.5
		elif currPos[0] < 541 && currPos[1] > 136 && currPos[1] < 196:
			currPos[0] += 48.5
		# Arriba - Casilla 80
		elif currPos[0] > 541 && currPos[0] < 601 && currPos[1] > 136 && currPos[1] < 196:
			currPos[1] -= 48.5
		elif currPos[0] > 172.5 && currPos[1] > 87 && currPos[1] < 147:
			currPos[0] -= 48.5
		# Arriba - Casilla 90
		elif currPos[0] < 172.5 && currPos[0] > 112.5 && currPos[1] > 87 && currPos[1] < 147:
			currPos[1] -= 48.5
		elif currPos[0] < 541 && currPos[1] > 39 && currPos[1] < 99:
			currPos[0] += 48.5
	# Comprobar casilla de agujero o cohete
	# Casilla 19
	if currPos[0] > 528 && currPos[0] < 556 && currPos[1] < 487 && currPos[1] > 427:
		currPos[0]-=(48.5*4)
		currPos[1]-=(48.5*5)
		print(48.5*4)
	# Casilla 32
	elif currPos[0] > 188 && currPos[0] < 220 && currPos[1] > 330 && currPos[1] < 390:
		currPos[0]+=(48.5)
		currPos[1]-=(48.5*2)
	# Casilla 67
	elif currPos[0] > 284 && currPos[0] < 316 && currPos[1] > 184 && currPos[1] < 244:
		currPos[0]+=(48.5*6)
		currPos[1]-=(48.5*3)
	# Casilla 73
	elif currPos[0] > 238 && currPos[0] < 266 && currPos[1] > 136 && currPos[1] < 196:
		currPos[0]-=(48.5*2)
		currPos[1]-=(48.5*2)
	# Casilla 25
	elif currPos[0] > 384 && currPos[0] < 412 && currPos[1] > 378 && currPos[1] < 438:
		currPos[0]-=(48.5)
		currPos[1]+=(48.5*2)
	# Casilla 46
	elif currPos[0] > 332 && currPos[0] < 364 && currPos[1] > 281 && currPos[1] < 341:
		currPos[0]-=(48.5*3)
		currPos[1]+=(48.5*3)
	# Casilla 71
	elif currPos[0] > 140 && currPos[0] < 168 && currPos[1] > 136 && currPos[1] < 196:
		currPos[0]+=(48.5)
		currPos[1]+=(48.5*2)
	# Casilla 95
	elif currPos[0] > 332 && currPos[0] < 364 && currPos[1] > 39 && currPos[1] < 99:
		currPos[0]+=(48.5*2)
		currPos[1]+=(48.5*3)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
