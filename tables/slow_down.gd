extends Area3D
@onready var tween: Tween = create_tween()

func _ready() -> void:
    pass

func _on_entered(_body: Node3D):
    tween = create_tween()
    tween.tween_property(Engine, "time_scale", 0.9, 0.9)

func _on_exited(_body: Node3D):
    tween = create_tween()
    tween.tween_property(Engine, "time_scale", 1.0, 0.1)