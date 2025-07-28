extends Control


func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_credits_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Credits.tscn")


func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/settings.tscn")


func _on_continue_pressed() -> void:
	AudioManager.stop_music()


func _on_new_game_pressed() -> void:
	AudioManager.stop_music()
