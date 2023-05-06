extends Area2D

var velocity = 150
var rot = 0
var quant = 0

func _ready():
	add_to_group(Game.ORGANICS_GROUP)
	randomize()
	set_process(true)
	rot = rand_range(-2, 2)
	pass

func _process(delta):
	set_position(get_position() + Vector2(0, 1) * velocity * delta)
	rotate(rot * delta)
	pass
