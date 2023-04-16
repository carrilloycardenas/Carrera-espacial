extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var currPos = [602.133,505.6]
var dice = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

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
		

