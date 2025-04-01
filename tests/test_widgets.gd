extends Node2D

@export var data : Resource

# TODO: Levels will contain this info, widgets available only for this level.
var widgets : Dictionary = WidgetManager.widget_map

@onready var widget_box: VBoxContainer = get_node("WidgetToolbox/VBoxContainer")


func _ready():
	load_widgets()
	print_debug("Widgets: ", len(widgets.keys()))


func _process(_delta):
	pass


func load_widgets() -> void:
	var control_template = null
	
	for widget_type in widgets.keys():
		control_template = load(widgets[widget_type]).instantiate()
		# var preview = control_template.preview
		# var widget_control: WidgetPreview = preview.instantiate()
		
		# preview.preview_type = widget_type
		widget_box.add_child(control_template)


func create_widget(model: WidgetModel) -> void:
	var template = load(widgets[model.widget_type])
	var new_widget = template.instantiate()
	new_widget.model = model
