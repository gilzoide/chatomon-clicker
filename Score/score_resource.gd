extends Resource
class_name ScoreResource

signal on_points_changed(value: float)

@export var points: float = 0
@export var points_per_click: float = 1
@export var clicks_per_second: float = 0


func add_points_from_click():
	add_points(points_per_click)


func add_points(value: float):
	if value == 0:
		return
	points += value
	on_points_changed.emit(points)


func spend_points(value: float) -> bool:
	if value >= points:
		points -= value
		on_points_changed.emit(points)
		return true
	else:
		return false
