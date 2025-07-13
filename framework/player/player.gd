extends CharacterBody2D

const SPEED : int = 100

func _physics_process(delta: float) -> void:
	handle_movement()
	move_and_slide()

# handles movement stuff
func handle_movement() -> void:
	var direction := Input.get_vector("left","right", "up", "down")
	if direction:
		velocity.x = direction.x * SPEED
		velocity.y = direction.y * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.x, 0, SPEED)
