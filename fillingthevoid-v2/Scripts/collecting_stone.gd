extends Button
var stone = preload("res://Classes/Stone/stone_collectable.tscn")

func _on_pressed():
	drop_stone()
	
func drop_stone():
	var stone_instance_top = stone.instantiate()
	var stone_instance_right = stone.instantiate()
	var stone_instance_left = stone.instantiate()
	
	stone_instance_right.position = $Right.position
	stone_instance_left.position = $Left.position
	stone_instance_top.position = $Top.position
	
	get_parent().add_child(stone_instance_top)
	get_parent().add_child(stone_instance_right)
	get_parent().add_child(stone_instance_left)
