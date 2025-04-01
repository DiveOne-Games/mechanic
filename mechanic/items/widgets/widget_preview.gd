class_name WidgetPreview
extends PanelContainer


@onready var model: WidgetModel = WidgetModel.new()
@onready var preview_type : WidgetManager.WidgetType


func _ready():
	model.widget_type = WidgetManager.WidgetType.Value


func _process(_delta):
	pass


func _get_drag_data(at_position: Vector2) -> Variant:
	# get the data you want to drag and return it
	var new_widget = load(WidgetManager.widget_map[preview_type]).instantiate()
	# new_widget.model = model
	
	# TODO: Create preview with a Control object.
	var color_box = ColorPickerButton.new()
	color_box.color = Color(0, 1, 0, 0.5)
	color_box.size = Vector2(50, 50)
	set_drag_preview(color_box)
	return new_widget
