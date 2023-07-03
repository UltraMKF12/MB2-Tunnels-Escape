extends CharacterBody2D

var pixel_per_second: int = 100
var direction: Vector2

var fireball: PackedScene = load("res://Objects/Fireball/fireball.tscn")

var button: Node2D = null
@onready var e_text: Label = $E


func _physics_process(delta):
	get_movement_direction()
	velocity = direction * pixel_per_second
	move_and_slide()
	
	if Input.is_action_just_pressed("shoot"):
		shoot_fireball()
	
	if Input.is_action_just_pressed("interact"):
		activate_button()


func get_movement_direction():
	direction = Input.get_vector("left", "right", "up", "down")


# Create a fireball, set the direction towards the mouse position, and rotate it accordingly
func shoot_fireball():
	var new_fireball: Node2D = fireball.instantiate()
	new_fireball.direction = global_position.direction_to(get_global_mouse_position())
	new_fireball.position = global_position
	new_fireball.look_at(get_global_mouse_position())
	new_fireball.rotation_degrees -= 90 # This way the fireball head is the sprite bottom.
	get_parent().add_child(new_fireball)


func activate_button():
	if button and button.has_method("activate"):
		button.activate()


func show_key():
	e_text.show()


func hide_key():
	e_text.hide()
