extends Node2D

var food = preload("res://Scenes/pelet.tscn")

<<<<<<< Updated upstream
=======
func _ready():
	Engine.time_scale = 1	
 
func _process(delta):
	if Input.is_action_just_pressed("pause"):
		pauseMenu()

func pauseMenu():
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
	else:
		pause_menu.show()
		Engine.time_scale = 0
	
	paused = !paused
>>>>>>> Stashed changes

func _on_click_area_pressed():
	var obj = food.instantiate()
	obj.position = get_global_mouse_position()
	get_node("Pellets").add_child(obj)


func _on_wall_bot_body_entered(body):
	if body.is_in_group("PeletGroup"):
		body.queue_free()
