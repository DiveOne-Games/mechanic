class_name WidgetModel
extends Resource

# enum WidgetType { Value, Addition, Unknown }
var WidgetType = WidgetManager.WidgetType
var output : int
var widget_type : WidgetManager.WidgetType


func _init(_value: int=0, _type: WidgetManager.WidgetType = WidgetType.Unknown):
	output = _value
	widget_type = _type


