class_name Draggable
extends Control


var preview : Control


func _ready():
	pass


func _process(_delta):
	pass


func _get_drag_data(at_position: Vector2) -> Variant:
	# get the data you want to drag
	# return the dragged data
	print_debug("Get drag ...")
	preview.size = Vector2(100, 100)
	set_drag_preview(preview)
	return self
