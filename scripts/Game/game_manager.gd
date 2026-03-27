extends Node

var default_map_path:String = "res://scenes/game/maps/world_map.tscn"

var current_map_path

func start_new_game():
	current_map_path = default_map_path
