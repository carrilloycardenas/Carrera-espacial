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
	if currPos[0] == 385 && currPos[1] == 449:
		currPos = [336.5,546]
	elif currPos[0] == 336.5 && currPos[1] == 352:
		currPos = [191,497.5]
	elif currPos[0] == 142.5 && currPos[1] == 206.5:
		currPos = [191,303.5]
	elif currPos[0] == 336.5 && currPos[1] == 109.5:
		currPos = [433.5,255]
	elif currPos[0] == 530.5 && currPos[1] == 497.5:
		currPos = [336.5,255]
	elif currPos[0] == 191 && currPos[1] == 400.5:
		currPos = [239.5,303.5]
	elif currPos[0] == 288 && currPos[1] == 255:
		currPos = [579,109.5]
	elif currPos[0] == 239.5 && currPos[1] == 206.5:
		currPos = [142.5,109.5]

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
