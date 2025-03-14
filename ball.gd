class_name Ball extends RigidBody3D
@onready var tween = create_tween()
func _ready() -> void:
    body_entered.connect(_on_contact)

func _on_contact(contact: Node3D):
    pass