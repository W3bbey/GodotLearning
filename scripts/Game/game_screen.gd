extends Node

class_name GameScreen

@export var map:Node
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	map.add_child(load(GameManager.currentMap).instantiate())
