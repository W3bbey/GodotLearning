extends Control


func _on_new_game_button_pressed():
	Loader.load_scene(self, "res://scenes/game_screen.tscn")
