# Removing the extend and adding class makes this script its own class
class_name Command

# not necessary to be upper-case
signal COMMAND_PROCESSED(label)

var command_label

func execute():
	COMMAND_PROCESSED.emit(command_label)

func get_command_text():
	return command_label
