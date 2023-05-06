extends Label

#var value = 60
#var time = 0
#var quant = 0

func _ready():
	set_process(true)
	pass

func _process(delta):
	self.text = String(Game.points)	
#	self.time += delta
#	if self.time >= 1:
#		self.value -= 1
#		self.time = 0
#		self.text = String(self.value)
#
#	if self.value == 0:
#		self.value = 60
	pass
