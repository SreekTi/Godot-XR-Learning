extends XRToolsPickable

#test to see if works
#var held_by = null
var held_controller : XRController3D = null

func _physics_process(delta: float) -> void:
	#is_gripped = get_tracker_hand() #get_float("grip") > threshold and get_float("trigger") > threshold
	#if is_picked_up() and controller_action(): #XRController3D.is_button_pressed("ax_button"):
		#pass
	if held_controller:
		if held_controller.is_button_pressed("trigger_click"):
			print("Trigger clicked while sword held!")
	
	
	
	#test to see if this works
	#if held_by.is_button_pressed("ax_button"):
		#print("omg it worked, sword go brrrrr")

#test to see if this works with other one
#func _on_picked_up(pickable: Variant) -> void:
	#held_by = pickable
	
#test to see if this works with other one
#func _on_dropped(pickable: Variant) -> void:
	#held_by = null


func _on_picked_up(controller: XRController3D) -> void:
	held_controller = controller


func _on_dropped() -> void:
	held_controller = null
