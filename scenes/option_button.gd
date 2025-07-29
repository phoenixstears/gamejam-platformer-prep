extends OptionButton


func _on_item_selected(index: int) -> void:
	Global.resolution = index
	match index:
		0:
			get_window().size = Vector2i(1280,720)
		1:
			get_window().size = Vector2i(1366,768)
		2:
			get_window().size = Vector2i(1600,900)
		3:
			get_window().size = Vector2i(1980,1050)
