extends Node

var pre_banana = preload("res://scenes/banana.tscn")
var pre_glass = preload("res://scenes/glass.tscn")

var intervalo = 2

func _ready():
	set_process(true)
	pass

func _process(delta):
	if (intervalo > 0):
		intervalo -= delta
	else:
		intervalo = rand_range(0.3, 1)
		var banana = pre_banana.instance()
		var glass = pre_glass.instance()
		
		banana.set_position(Vector2(rand_range(30, 610), -40))
		glass.set_position(Vector2(rand_range(30, 610), -40))
		
		get_owner().add_child(banana)
		get_owner().add_child(glass)
	pass
