extends Node

const ADDITION_WIDGET_PATH := "res://mechanic/items/widgets/addition_widget.tscn" 
const VALUE_WIDGET_PATH := "res://mechanic/items/widgets/value_widget.tscn"

enum WidgetType { Value, Addition, Unknown }
const widget_map : Dictionary = {
	WidgetType.Value: 'res://mechanic/items/widgets/value_widget.tscn',
	WidgetType.Addition: 'res://mechanic/items/widgets/addition_widget.tscn'
}

const preview_map : Dictionary = {
	WidgetType.Value: 'res://mechanic/items/widgets/widget_preview.tscn',
	WidgetType.Addition: 'res://mechanic/items/widgets/widget_preview.tscn',
	WidgetType.Unknown: 'res://mechanic/items/widgets/widget_preview.tscn'
}

