class_name new_area_trigger extends Area2D

@export var connected_scene: String
var scene_folder = "res://Scenes/"

func _on_body_entered(_body: Node2D) -> void:
	var full_path = scene_folder + connected_scene + ".tscn"
	var scene_tree = get_tree()
	scene_tree.call_deferred("change_scene_to_file", full_path)
