extends CharacterBody2D
class_name ghostEnemy

var pixel_per_second: int = 50

var ghost_corpse: PackedScene = load("res://Objects/Enemy/ghost_corpse.tscn")
@onready var player: Node2D = $"../Player"


func _physics_process(delta):
	if get_parent().has_node("Player"):
		var direction = position.direction_to(player.position)
		velocity = direction * pixel_per_second
		move_and_slide()

func die():
	var corpse: Node2D = ghost_corpse.instantiate()
	corpse.position = position
	get_parent().add_child(corpse)
	queue_free()
