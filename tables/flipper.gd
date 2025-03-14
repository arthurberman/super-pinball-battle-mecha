extends HingeJoint3D


@export var action: String = "flip_left"
func _physics_process(_delta: float) -> void:
	if Input.is_action_just_pressed(action):
		self["motor/target_velocity"] = -70
		self["motor/enable"] = true
	elif Input.is_action_pressed(action):
		self["motor/enable"] = false
		
	if Input.is_action_just_released(action):
		self["motor/enable"] = true
		self["motor/target_velocity"] = 10
