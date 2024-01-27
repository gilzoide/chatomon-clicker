extends Node

@export var score: ScoreResource

@onready var value_label: Label = $Value


func _ready():
	score.on_points_changed.connect(_on_value_changed)
	value_label.text = str(int(score.points))


func _on_value_changed(value: float):
	value_label.text = str(int(value))
