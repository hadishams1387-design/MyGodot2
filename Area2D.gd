extends Area2D

func _input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and event.pressed) \
	or (event is InputEventScreenTouch and event.pressed):
		get_parent().get_parent()._on_wrong_answer()
