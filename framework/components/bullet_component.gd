extends StaticBody2D

@onready var collision : CollisionShape2D

@export var damage : int
@export var speed : int
@export var isPlayer : bool

func _process(delta: float) -> void:
	var targetPosition : Vector2
	if isPlayer:
		targetPosition = get_viewport().get_mouse_position()
		global_position = get_parent().global_position - targetPosition
