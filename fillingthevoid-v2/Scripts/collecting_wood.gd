extends Button
var stick = preload("res://Classes/Wood/stick_collectable.tscn")

func _on_pressed():
	drop_stick()

func drop_stick():
	var stick_instance_middle = stick.instantiate()
	var stick_instance_right = stick.instantiate()
	var stick_instance_left = stick.instantiate()
	
	stick_instance_right.position = $Right.position
	stick_instance_left.position = $Left.position
	stick_instance_middle.position = $Middle.position
	
	get_parent().add_child(stick_instance_middle)
	get_parent().add_child(stick_instance_right)
	get_parent().add_child(stick_instance_left)
