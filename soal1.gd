extends Node2D

export(String, FILE, "*.tscn") var next_scene
export(String, FILE, "*.tscn") var wrong_scene  # صحنه جدید برای پاسخ اشتباه
var answered := false
var flash_time := 0.5

func _ready():
	$GreenFlash.visible = false

func _on_correct_answer():
	if answered:
		return
	answered = true
	$GreenFlash.color = Color(0,1,0)  # سبز
	$GreenFlash.visible = true
	yield(get_tree().create_timer(flash_time), "timeout")
	get_tree().change_scene(next_scene)

func _on_wrong_answer():
	$GreenFlash.color = Color(1,0,0)  # قرمز
	$GreenFlash.visible = true
	yield(get_tree().create_timer(flash_time), "timeout")
	
	if wrong_scene:  # اگر صحنه اشتباه تنظیم شده باشد
		get_tree().change_scene(wrong_scene)
	else:  # در غیر این صورت فلش مخفی شود
		$GreenFlash.visible = false


