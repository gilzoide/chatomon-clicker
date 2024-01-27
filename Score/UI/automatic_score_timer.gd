extends Node

@export var score: ScoreResource


func _on_timer_timed_out():
	score.add_points_from_click(score.clicks_per_second)
