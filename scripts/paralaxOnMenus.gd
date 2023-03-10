extends ParallaxBackground

@export (float) var scrolling_speed = 24.0
 
func _process(delta):
	scroll_base_offset.x += scrolling_speed * delta
