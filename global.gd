extends Node

var sound_volume = 85
var sfx_volume = 85
var fullscreen = false
var resolution = 0

func _ready():
	load_settings()
	
func load_settings():
	var config = ConfigFile.new()
	var err = config.load("res://settings.cfg")
	if err != OK:
		return
	sound_volume = config.get_value("sound volume","sound volume")
	var db = linear_to_db(sound_volume / 100.0)  # Convert 0–100 to decibels
	AudioServer.set_bus_volume_db(0, db)
	sfx_volume = config.get_value("sfx volume","sfx volume")
	fullscreen = config.get_value("fullscreen","fullscreen")
	match fullscreen:
		true:
			print("ligma")
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
			Global.fullscreen = true
		false:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
			Global.fullscreen = false
	resolution = config.get_value("resolution","resolution")
	match resolution:
		0:
			get_window().size = Vector2i(1280,720)
		1:
			get_window().size = Vector2i(1366,768)
		2:
			get_window().size = Vector2i(1600,900)
		3:
			get_window().size = Vector2i(1980,1050)
	
func save_settings():
	var config = ConfigFile.new()
	config.set_value("sound volume","sound volume",sound_volume)
	config.set_value("sfx volume","sfx volume",sfx_volume)
	config.set_value("fullscreen","fullscreen",fullscreen)
	config.set_value("resolution","resolution",resolution)
	config.save("res://settings.cfg")
	
	
func _exit_tree():
	save_settings()
