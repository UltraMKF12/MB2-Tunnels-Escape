extends CharacterBody2D

var pixel_per_second: int = 100
var direction: Vector2

func _ready():
	velocity = direction * pixel_per_second

func _process(delta):
	move_and_slide()
	


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
