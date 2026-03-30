extends Command

class_name PassCommand

# constructors use the init function
func _init():
	command_label = "Pass"
	
func execute():
	print("Player passed.")
	COMMAND_PROCESSED.emit(command_label)
