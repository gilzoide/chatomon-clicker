extends Control

signal on_click()

@export var score: ScoreResource


func _gui_input(event):
	if event is InputEventMouseButton and event.is_pressed():
		score.add_points_from_click()
		on_click.emit()
