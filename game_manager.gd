extends Node

@export var time := 10

@onready var label = $"../CanvasLayer/TimeLabel"

func _process(delta):

	time -= delta

	label.text = str(int(ceil(time)))

	if time <= 0:
		get_tree().reload_current_scene()
