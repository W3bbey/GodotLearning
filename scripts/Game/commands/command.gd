# Removing the extend and adding class makes this script its own class
class_name Command

signal COMMAND_PROCESSED(lable)

var command_label

func execute():
	COMMAND_PROCESSED.emit(command_label)
