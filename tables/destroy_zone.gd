extends Area3D
signal destroyed(body: RigidBody3D)
func _ready() -> void:
    body_entered.connect(kill)

func kill(body: RigidBody3D):
    destroyed.emit(body)
    body.queue_free()
