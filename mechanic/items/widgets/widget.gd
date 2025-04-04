class_name Widget
extends PanelContainer

@export var widget_type : WidgetManager.WidgetType
@export var output : int
@export var is_active := false

var model: WidgetModel


func _ready():
	pass


func _process(_delta):
	pass


func _get_drag_data(at_position: Vector2) -> Variant:
	# get the data you want to drag and return it
	# TODO: New widget is for cloning. Return self for dragging/dropping same widget.
	if self.is_active:
		return self
	
	var new_widget = load(WidgetManager.widget_map[model.widget_type]).instantiate()
	new_widget.model = model
	
	# TODO: Create preview with a Control object.
	var color_box = ColorPickerButton.new()
	color_box.color = Color(0, 0, 0, 0.5)
	color_box.size = Vector2(50, 50)
	set_drag_preview(color_box)

	return new_widget

