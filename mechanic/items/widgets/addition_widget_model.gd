class_name AdditionWidgetModel
extends WidgetModel

@export var input_1 := 0
@export var input_2 := 0


func _init(_input_1: int=0, _input_2: int=0):
	input_1 = _input_1
	input_2 = _input_2
	output = input_1 + input_2 
	widget_type = WidgetType.Addition
