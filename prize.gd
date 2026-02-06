extends Sprite

func _ready():
	visible = false
	yield(get_tree().create_timer(1), "timeout")
	visible = true

