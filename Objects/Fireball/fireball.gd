extends CharacterBody2D
class_name Fireball


var pixel_per_second: int = 150
var direction: Vector2


func _ready():
	velocity = direction * pixel_per_second


func _process(delta):
	move_and_slide()
	
	# If it collides, it must be an enemy or a wall
	if get_slide_collision_count() > 0:
		
		# Kill every enemy it collides with
		var collision_object: Node2D = get_last_slide_collision().get_collider()
		if not collision_object is TileMap:
			if collision_object.has_method("die"):
				collision_object.die()
		
		queue_free()


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
