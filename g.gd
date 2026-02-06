extends Area2D

func _input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and event.pressed) \
	or (event is InputEventScreenTouch and event.pressed):
		# چون یک Node بین Area2D و Node2D ریشه هست
		get_parent().get_parent()._on_correct_answer()
