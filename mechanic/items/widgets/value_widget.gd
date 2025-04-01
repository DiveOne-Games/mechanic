extends Widget

@onready var add_button : Button = get_node("HBoxContainer/Add")
@onready var sub_button : Button = get_node("HBoxContainer/Subtract")
@onready var output_label : Label = get_node("HBoxContainer/Value")


func _ready():
	model = ValueWidgetModel.new()
	widget_type = WidgetManager.WidgetType.Value


func _process(_delta):
	output_label.text = str(output)


func increment() -> void:
	output += 1


func decrement() -> void:
	if output > 0:
		output -= 1


func _on_add_button_down():
	increment()


func _on_subtract_button_down():
	decrement()
