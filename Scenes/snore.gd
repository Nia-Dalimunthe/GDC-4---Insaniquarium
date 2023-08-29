extends CharacterBody2D


const SPEED = 300.0

# Sementara gerak pake arrow keys, buat debugging purposes

func _physics_process(delta):
	var direction = Input.get_axis("ui_left", "ui_right")
	
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
	animation()

func animation():
	var direction = Input.get_axis("ui_left", "ui_right")
	
	if direction == 1:
		$AnimatedSprite2D.flip_h = true
		$AnimatedSprite2D.play("snore_walk")
	elif direction == -1:
		$AnimatedSprite2D.flip_h = false
		$AnimatedSprite2D.play("snore_walk")
	else:
		$AnimatedSprite2D.pause()
