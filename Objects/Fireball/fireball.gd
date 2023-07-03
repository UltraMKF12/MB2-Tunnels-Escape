extends CharacterBody2D
class_name fireBall

var ghost_corpse: PackedScene = load("res://Objects/Enemy/ghost_corpse.tscn")

var pixel_per_second: int = 150
var direction: Vector2

func _ready():
	velocity = direction * pixel_per_second

func _process(delta):
	move_and_slide()
	
	# If it collides, it must be an enemy or a wall
	if get_slide_collision_count() > 0:
		queue_free()
		if not get_last_slide_collision().get_collider() is TileMap:
			instance_ghost_corpse()
			get_last_slide_collision().get_collider().queue_free()

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()

		
func instance_ghost_corpse():
	var new_gCorpse: Node2D = ghost_corpse.instantiate()
	new_gCorpse.position = global_position
	get_tree().root.add_child(new_gCorpse)


