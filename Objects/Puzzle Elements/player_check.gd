extends Area2D


func _on_body_entered(body: Node2D):
	if body.has_method("show_key"):
		body.button = get_parent()
		body.show_key()


func _on_body_exited(body):
	if body.has_method("hide_key"):
		body.button = null
		body.hide_key()
