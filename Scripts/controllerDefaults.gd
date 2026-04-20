class_name GrippableXRController3D extends XRController3D

signal gripped
signal released

@export var threshold: float = 0.9

@export var is_gripped: bool:
	set(value):
		if not is_gripped and value:
			gripped.emit()
		elif is_gripped and not value:
			released.emit()
		is_gripped = value

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	is_gripped = get_float("grip") > threshold and get_float("trigger") > threshold
	if(is_gripped):
		$GPUParticles3D.emitting = true
	else:
		$GPUParticles3D.emitting = false
	#print(name,value)
