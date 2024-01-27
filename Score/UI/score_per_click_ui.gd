extends Node

@export var score: ScoreResource

@onready var value_label: Label = $Value


func _ready():
	score.on_points_per_click_changed.connect(_on_value_changed)
	value_label.text = str(score.points_per_click)


func _on_value_changed(value: float):
	value_label.text = str(value)
