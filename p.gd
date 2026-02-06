extends Area2D

func _ready():
	# فعال کردن دریافت ورودی
	input_pickable = true
	# اتصال سیگنال
	connect("input_event", self, "_on_input_event")

func _on_input_event(viewport, event, shape_idx):
	# برای موس
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			get_tree().quit()
	
	# برای تاچ (موبایل/تبلت)
	elif event is InputEventScreenTouch:
		if event.pressed:
			get_tree().quit()
