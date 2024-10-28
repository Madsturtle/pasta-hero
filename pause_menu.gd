extends Control

func _init() -> void:
	hide()
func resume():
	get_tree().paused = false

func paused():
	get_tree().paused = true

func _process(delta: float) -> void:
	testEsc()
	pass
	
func testEsc():
	if Input.is_action_just_pressed("esc") and is_visible_in_tree():
		print('hiding')
		hide()
		get_tree(). paused = false
		return
	if Input.is_action_just_pressed("esc") and not is_visible_in_tree():
		print('showing')
		show() 
		get_tree(). paused = true
func _on_resume_pressed() -> void:
	hide()

func _on_restart_pressed() -> void:
	get_tree().reload_current_scene()


func _on_quit_pressed() -> void:
	get_tree().quit()
