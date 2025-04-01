class_name AdditionWidget
extends Widget

@export var input_1_value := 0
@export var input_2_value := 0

@onready var input_1_label : Label = get_node("HBoxContainer/VBoxContainer/Input1")
@onready var input_2_label : Label = get_node("HBoxContainer/VBoxContainer/Input2")
@onready var output_label : Label = get_node("HBoxContainer/VBoxContainer/Output")


func _ready():
	model = AdditionWidgetModel.new()
	widget_type = model.widget_type
	input_1_value = model.input_1
	input_2_value = model.input_2


func _process(_delta):
	output = input_1_value + input_2_value
	output_label.text = str(output)
