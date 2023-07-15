extends StaticBody2D

var active: bool = false
@onready var animatedSprite = $AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	animatedSprite.play("inactive")
	
func _process(delta):
	pass

func activate():
	if not active:
		active = true
		animatedSprite.play("active")
		Global.obelisk_active_counter += 1
		await get_tree().create_timer(4).timeout
		if Global.obelisk_active_counter < 4:
			animatedSprite.play("inactive")
			Global.obelisk_active_counter -= 1
			active = false
