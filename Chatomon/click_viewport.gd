extends Control


@export var score: ScoreResource


func _on_gui_input(event):
	if event is InputEventMouseButton and event.is_pressed():
		score.add_points_from_click()
