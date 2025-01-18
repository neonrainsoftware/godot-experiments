extends Button

var threat = false

# Called when the node enters the scene tree for the first time.
func _ready():
	self.text = 'ready'

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	while not threat:
		var delay = RandomNumberGenerator.new().randf_range(10.0, 200.0)
		await get_tree().create_timer(delay).timeout
		self.text = 'threat'
		threat = true

func _on_pressed():
	if threat == true:
		self.text = 'ready'
		threat = false

