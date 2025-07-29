extends Control


func _ready():
	$VBoxContainer/HBoxContainer3/OptionButton22.select(Global.resolution)
	match Global.fullscreen:
		false:
			$VBoxContainer/HBoxContainer4/OptionButton2.select(1)
		true:
			$VBoxContainer/HBoxContainer4/OptionButton2.select(0)
	$VBoxContainer/HBoxContainer/HSlider.value = Global.sound_volume
	$VBoxContainer/HBoxContainer2/HSlider2.value = Global.sfx_volume
