extends Area2D

func _on_area_entered(_area: Area2D) -> void:
	_exit_tree()
	Global.wood += 1

func _exit_tree():
	self.queue_free()
