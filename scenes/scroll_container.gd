extends ScrollContainer

var scroll_speed = 1 # pixels per second

func _process(delta):
	var max_scroll = self.size.y
	var max_size = $VBoxContainer.size.y
	self.scroll_vertical += scroll_speed 
	if self.scroll_vertical >= (max_size - max_scroll):
		get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
