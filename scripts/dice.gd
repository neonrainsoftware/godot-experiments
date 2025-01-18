extends Sprite2D

const COOLDOWN = 0.2
const ROLLSAMT = 30

var cooldown = COOLDOWN
var rolls = ROLLSAMT
var textures_arr = [load("res://art/dice1.jpeg"), load("res://art/dice2.jpeg"),
	load("res://art/dice1.jpeg"), load("res://art/dice4.jpeg"),
	load("res://art/dice5.jpeg"), load("res://art/dice6.jpeg")]

func _ready():
	add_child(Sprite2D.new())
	EventBus.connect("roll_button_pressed", roll_dice)

func _process(_delta):
	if PlayerVariables.rolling:
		cooldown -= _delta
		if cooldown <= 0:
			var randomtexture = (randi() % 5)
			self.texture = textures_arr[randomtexture]
			cooldown = COOLDOWN
			rolls -= 1
			if rolls <= 0:
				PlayerVariables.rolling = false
				rolls = ROLLSAMT

func roll_dice():
	pass
