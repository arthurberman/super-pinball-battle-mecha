extends HingeJoint3D


@export var action: String = "flip_left"

func _ready() -> void:
	self["motor/enable"] = true
	self["motor/target_velocity"] = 10
func _physics_process(_delta: float) -> void:
	if Input.is_action_just_pressed(action):
		self["motor/target_velocity"] = -60
		self["motor/enable"] = true
		if $Audio:
			$Audio.play()
	elif Input.is_action_pressed(action):
		self["motor/target_velocity"] = -30
		self["motor/enable"] = true

	if Input.is_action_just_released(action):
		self["motor/enable"] = true
		self["motor/target_velocity"] = 10
