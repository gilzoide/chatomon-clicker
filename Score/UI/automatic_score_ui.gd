extends Node

@export var score: ScoreResource

@onready var value_label: Label = $Value


func _ready():
	score.on_clicks_per_second_changed.connect(_on_value_changed)
	value_label.text = str(score.clicks_per_second)


func _on_value_changed(value: float):
	value_label.text = str(value)
