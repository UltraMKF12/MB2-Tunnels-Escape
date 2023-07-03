extends CharacterBody2D
class_name ghostEnemy

var pixel_per_second: int = 50
@onready var player: Node2D = $"../Player"

func _physics_process(delta):
	
	var direction = position.direction_to(player.position)
	velocity = direction * pixel_per_second
	move_and_slide()
	


