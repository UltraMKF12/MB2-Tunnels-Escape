extends Camera2D

@onready var player: Node2D = $"../Player"


func _ready():
	pass 

 
func _physics_process(delta):
	if is_instance_valid(player):
		position = player.position
