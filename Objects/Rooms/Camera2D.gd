extends Camera2D



func _ready():
	pass 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = position.direction_to($"../Player".position)
