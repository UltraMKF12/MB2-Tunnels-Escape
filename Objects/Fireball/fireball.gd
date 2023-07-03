extends CharacterBody2D

var pixel_per_second: int = 100
var direction: Vector2

func _ready():
	velocity = direction * pixel_per_second

func _process(delta):
	move_and_slide()
