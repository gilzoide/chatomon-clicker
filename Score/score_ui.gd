extends Control

@export var score: ScoreResource

@onready var value_label: Label = $Value


func _ready():
	score.on_points_changed.connect(_on_value_changed)


func _notification(what):
	if what == NOTIFICATION_PREDELETE:
		score.on_points_changed.disconnect(_on_value_changed)


func _on_value_changed(value: float):
	value_label.text = str(int(value))
