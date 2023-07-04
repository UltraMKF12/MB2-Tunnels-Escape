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
		await get_tree().create_timer(4).timeout
		animatedSprite.play("inactive")
		active = false
