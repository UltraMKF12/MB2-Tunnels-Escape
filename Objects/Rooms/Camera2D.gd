extends Camera2D

@onready var player: Node2D = $"../Player"

var pixel_per_second: int = 100

func _ready():
	pass 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_parent().has_node("Player"):
		position = player.position
		
