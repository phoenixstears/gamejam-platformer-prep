extends Node

var scroll_speed = 50  # pixels per second

func _process(delta):
	var scroll = $ScrollContainer
	scroll.scroll_vertical += scroll_speed * delta
