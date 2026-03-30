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
	
func process_command():
	pass
	
func wait_for_command():
	pass
	
func pause_processing():
	pass
