extends CharacterBody2D

@onready var Player = $"../Player"

const SPEED = 150.0

func _physics_process(delta):
	
	var direction = Player.position - position
	direction.normalize()
	position += direction / SPEED
	
	
	move_and_slide()
