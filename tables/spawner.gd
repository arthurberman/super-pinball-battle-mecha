extends Node3D

@onready var rng: RandomNumberGenerator = RandomNumberGenerator.new()
@export var scene: Array[PackedScene]
@export var nudge: bool = false
func spawn(peer: Node3D):
    if scene.is_empty():
        return
    var new_instance: Node3D = (scene.pick_random() as PackedScene).instantiate()
    peer.add_sibling(new_instance)
    new_instance.global_transform = global_transform
    if nudge:
        if new_instance is RigidBody3D:
            new_instance.apply_central_impulse(Vector3(rng.randf(), rng.randf(), rng.randf()))
        else:
            push_warning("nudge cannot apply when body is not physics-enabled")
