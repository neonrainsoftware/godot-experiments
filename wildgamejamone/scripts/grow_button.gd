extends Node

var sprite_state = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	var button = Button.new()
	add_child(button)

func _button_pressed():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
