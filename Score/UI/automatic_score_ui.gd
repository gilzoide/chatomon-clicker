extends Control


@export var score: ScoreResource

@onready var label: Label = $Value


func _ready():
	score.on_clicks_per_second_changed.connect(_on_value_changed)
	label.text = str(score.clicks_per_second)


func _on_value_changed(value: float):
	label.text = str(value)
