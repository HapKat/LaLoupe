extends CharacterBody2D

# pixels/sec
const SPEED = 120

func _physics_process(delta):
	var input_vector = Vector2.ZERO

	input_vector.x = Input.get_axis("ui_left", "ui_right")
	input_vector.y = Input.get_axis("ui_up", "ui_down")

	if input_vector != Vector2.ZERO:
		input_vector = input_vector.normalized()

	velocity = input_vector * SPEED
	move_and_slide()
