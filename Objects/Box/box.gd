extends StaticBody2D

@onready var rightRayCast = $RightRayCast
@onready var leftRayCast = $LeftRayCast
@onready var upperRayCast = $UpperRayCast
@onready var bottomRayCast = $BottomRayCast

var push_distance: int = 16
#enum States {LEFT,RIGHT,TOP,BOTTOM}

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if rightRayCast.is_colliding():
		position.x -= push_distance
	if leftRayCast.is_colliding():
		position.x += push_distance
	if upperRayCast.is_colliding():
		position.y += push_distance
	if bottomRayCast.is_colliding():
		position.y -= push_distance
