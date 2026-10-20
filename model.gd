extends Node3D

var angular_acceleration = 3
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$player_mesh.rotation.y = lerp_angle($player_mesh.rotation.y, atan2(velocity.x, velocity.z), delta * angular_acceleration)
