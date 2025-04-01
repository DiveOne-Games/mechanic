class_name Dropable 
extends Control


func _can_drop_data(at_position: Vector2, drop_data: Variant) -> bool:
	# print_debug("Can drop at? ", at_position)
	return drop_data is Widget or drop_data is WidgetPreview


func _drop_data(on_position, drop_data) -> void:
	drop_data.position = on_position
	# drop_data.reparent(self)
	add_child(drop_data)
