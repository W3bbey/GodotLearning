extends Timer


signal BROADCAST_COMMAND(label)
# this broadcast is helpful to let other components know
# something has happened
var resume_waiting:bool = true

# does command dispatcher need to be an autoload?
func _ready():
	CommandDispatcher.PROCESS_COMMAND.connect(process_command)
	CommandDispatcher.WAIT_FOR_COMMAND.connect(wait_for_command)
	CommandDispatcher.PAUSE_PROCESSING.connect(pause_processing)
	
func process_command(command:Command):
	if (is_stopped()):
		return
	
	stop()
	
	command.COMMAND_PROCESSED.connect(on_command_processed)
	BROADCAST_COMMAND.emit(command.get_command_text())
	command.execute()
	
func wait_for_command():
	resume_waiting = true
	start()
	
func pause_processing():
	resume_waiting = false
	stop()

func on_command_processed(result):
	pass
