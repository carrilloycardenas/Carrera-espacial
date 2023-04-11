extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var currPos = [579,546]
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
		if currPos[0] > 142.5 && currPos[1] == 546:
			currPos[0] -= 48.5
		elif currPos[0] == 142.5 && currPos[1] == 546:
			currPos[1] -= 48.5
		elif currPos[0] < 579 && currPos[1] == 497.5:
			currPos[0] += 48.5
		elif currPos[0] == 579 && currPos[1] == 497.5:
			currPos[1] -= 48.5
		elif currPos[0] > 142.5 && currPos[1] == 449:
			currPos[0] -= 48.5
		elif currPos[0] == 142.5 && currPos[1] == 449:
			currPos[1] -= 48.5
		elif currPos[0] < 579 && currPos[1] == 400.5:
			currPos[0] += 48.5
		elif currPos[0] == 579 && currPos[1] == 400.5:
			currPos[1] -= 48.5
		elif currPos[0] > 142.5 && currPos[1] == 352:
			currPos[0] -= 48.5
		elif currPos[0] == 142.5 && currPos[1] == 352:
			currPos[1] -= 48.5
		elif currPos[0] < 579 && currPos[1] == 303.5:
			currPos[0] += 48.5
		elif currPos[0] == 579 && currPos[1] == 303.5:
			currPos[1] -= 48.5
		elif currPos[0] > 142.5 && currPos[1] == 255:
			currPos[0] -= 48.5
		elif currPos[0] == 142.5 && currPos[1] == 255:
			currPos[1] -= 48.5
		elif currPos[0] < 579 && currPos[1] == 206.5:
			currPos[0] += 48.5
		elif currPos[0] == 579 && currPos[1] == 206.5:
			currPos[1] -= 48.5
		elif currPos[0] > 142.5 && currPos[1] == 158:
			currPos[0] -= 48.5
		elif currPos[0] == 142.5 && currPos[1] == 158:
			currPos[1] -= 48.5
		elif currPos[0] < 579 && currPos[1] == 109.5:
			currPos[0] += 48.5
	# Comprobar casilla de agujero o cohete
	# Casilla 19
	if currPos[0] > 500 && currPos[0] < 560 && currPos[1] > 467 && currPos[1] < 527:
		currPos[0]-=(48.5*4)
		currPos[1]-=(48.5*5)
		print(48.5*4)
	# Casilla 32
	elif currPos[0] > 161 && currPos[0] < 221 && currPos[1] > 370 && currPos[1] < 430:
		currPos[0]+=(48.5)
		currPos[1]-=(48.5*2)
	# Casilla 67
	elif currPos[0] > 258 && currPos[0] < 318 && currPos[1] > 225 && currPos[1] < 285:
		currPos[0]+=(48.5*6)
		currPos[1]-=(48.5*3)
	# Casilla 73
	elif currPos[0] > 209 && currPos[0] < 269 && currPos[1] > 176 && currPos[1] < 236:
		currPos[0]-=(48.5*2)
		currPos[1]-=(48.5*2)
	# Casilla 25
	elif currPos[0] > 355 && currPos[0] < 425 && currPos[1] > 419 && currPos[1] < 479:
		currPos[0]-=(48.5)
		currPos[1]+=(48.5*2)
	# Casilla 46
	elif currPos[0] > 306 && currPos[0] < 366 && currPos[1] > 322 && currPos[1] < 382:
		currPos[0]-=(48.5*3)
		currPos[1]+=(48.5*3)
	# Casilla 71
	elif currPos[0] > 112 && currPos[0] < 172 && currPos[1] > 176 && currPos[1] < 236:
		currPos[0]+=(48.5)
		currPos[1]+=(48.5*2)
	# Casilla 95
	elif currPos[0] > 306 && currPos[0] < 366 && currPos[1] > 79 && currPos[1] < 139:
		currPos[0]+=(48.5*2)
		currPos[1]+=(48.5*3)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
