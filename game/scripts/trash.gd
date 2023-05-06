extends Area2D

var pre_tiro = preload("res://scenes/tiro.tscn")

var velocity = 300
var intervalo = .3
var ultimo_disparo = 0

func _ready():
	set_process(true)
	pass


func _process(delta):

	var dir = 0
	var esq = 0
	
	if Input.is_action_pressed("dir"):
		dir = 1
		pass
	
	if Input.is_action_pressed("esq"):
		esq = -1
		pass
	
	if get_position().x > (640 - 40):
		dir = 0
		pass
	
	if get_position().x < 40:
		esq = 0
		pass
	
	set_position(get_position() + Vector2(1, 0) * velocity * delta * (dir + esq))

	#Disparos
	if Input.is_action_pressed("tiro"):
		if ultimo_disparo <= 0:
			var tiro = pre_tiro.instance()
			tiro.set_global_position(get_global_position())
			get_node("../").add_child(tiro)
			ultimo_disparo = intervalo
			pass
		pass
	
	if ultimo_disparo > 0:
		ultimo_disparo -= delta
		pass

	pass


func _on_trash_area_entered(area):
	if area.is_in_group(Game.GLASS_GROUP):
		#print(area.get_groups())
		Game.points += 1
		area.queue_free()
	pass
