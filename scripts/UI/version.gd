extends Label

func _ready():
	text = text + ProjectSettings.get_setting("application/config/version")
