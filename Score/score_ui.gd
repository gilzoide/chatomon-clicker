extends Control

@export var score: ScoreResource

@onready var value_label: Label = $Value


func _enter_tree():
	score.on_points_changed.connect(_on_value_changed)


func _exit_tree():
	score.on_points_changed.disconnect(_on_value_changed)


func _on_value_changed(value: int):
	value_label.text = str(value)
