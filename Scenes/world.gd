extends Node2D

var food = preload("res://Scenes/pelet.tscn")


func _on_click_area_pressed():
	var obj = food.instantiate()
	obj.position = get_global_mouse_position()
	get_node("Pellets").add_child(obj)


func _on_wall_bot_body_entered(body):
	if body.is_in_group("PeletGroup"):
		body.queue_free()
