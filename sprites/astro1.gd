extends CharacterBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var currPos = [579,546]

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


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
