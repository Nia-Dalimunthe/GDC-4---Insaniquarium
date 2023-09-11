extends Node2D

@onready var pause_menu = $Camera2D/Pause

var paused = false
var food = preload("res://Scenes/pelet.tscn")

<<<<<<< HEAD
<<<<<<< Updated upstream
=======
func _ready():
	Engine.time_scale = 1	
=======
func _ready():
	Engine.time_scale = 1
>>>>>>> a6442f618bd497ba974f467c1a4df2eff122c759
 
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
<<<<<<< HEAD
>>>>>>> Stashed changes
=======
>>>>>>> a6442f618bd497ba974f467c1a4df2eff122c759

func _on_click_area_pressed():
	var obj = food.instantiate()
	obj.position = get_global_mouse_position()
	get_node("Pellets").add_child(obj)


func _on_wall_bot_body_entered(body):
	if body.is_in_group("PeletGroup"):
		body.queue_free()
