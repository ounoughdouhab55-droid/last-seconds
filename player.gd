extends CharacterBody2D

@export var speed := 250.0
@export var jump_force := -420.0
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	if !is_on_floor():
		velocity.y += gravity * delta
	var direction = Input.get_axis("left","right")
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_force
	velocity.x = direction * speed
	move_and_slide()
