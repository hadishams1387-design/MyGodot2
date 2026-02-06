extends Area2D

export(String, FILE, "*.tscn") var next_scene = ""

func _ready():
	connect("input_event", self, "_on_input_event")

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and not event.pressed:
			change_scene()
	elif event is InputEventScreenTouch:
		if not event.pressed:
			change_scene()

func change_scene():
	if next_scene != "":
		get_tree().change_scene(next_scene)
