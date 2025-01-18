extends Sprite2D

@onready var energy = get_node("CanvasLayer/Energy")

var sprite_state = 0
var energy_score = 0
var time_out = 1
var time = time_out
var add_energy = false

func _ready():
    pass

func _process(_delta):
    #print(floor(Time.get_ticks_msec() - start_time) % 1000)
    #if Time.get_ticks_msec() % 1000 == 0:
    if time > 0:
        time -= _delta
    else:
        time = time_out
        _increment_score()

func _on_button_pressed():
    if sprite_state == 0:
        var texture = load('res://art/larva.jpeg')
        self.texture = texture
        energy.text = str("Energy: ", 0)
        energy_score = 0
    if sprite_state == 1:
        var texture = load('res://art/coccoon.jpeg')
        self.texture = texture
        energy.text = str("Energy: ", 0)
        energy_score = 0
    if sprite_state == 2:
        var texture = load('res://art/evil.jpeg')
        self.texture = texture
        energy.text = str("Energy: ", 0)
        energy_score = 0
    sprite_state += 1

func _increment_score():
    PlayerVariables.energy += 1
    energy.text = str("Energy: ", PlayerVariables.energy)