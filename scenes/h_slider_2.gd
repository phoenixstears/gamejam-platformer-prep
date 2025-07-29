extends HSlider


func _on_value_changed(value: float) -> void:
	print("volume changed!")
	Global.sfx_volume = value
