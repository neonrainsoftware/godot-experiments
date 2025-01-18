extends Node

var curr_scene = null

# Called when the node enters the scene tree for the first time.
func _ready():
	var root = get_tree().root
	curr_scene = root.get_child(-1)

func goto_scene(path):
	_deferred_goto_scene.call_deferred(path)

func _deferred_goto_scene(path):
	curr_scene.free()
	var sc = ResourceLoader.load(path)
	curr_scene = sc.instantiate()
	get_tree().root.add_child(curr_scene)
	get_tree().current_scene = curr_scene

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
