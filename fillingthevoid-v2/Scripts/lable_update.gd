extends Control

func _process(_delta: float) -> void:
	$Stick.text = str(Global.wood)
	$Stone.text = str(Global.stone)
