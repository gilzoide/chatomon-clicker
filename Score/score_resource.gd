extends Resource


@export var points: int = 0
@export var points_per_click: float = 1
@export var clicks_per_second: float = 0


func add_points_from_click():
	add_points(points_per_click)


func add_points(value: int):
	points += value


func spend_points(value: int) -> bool:
	if value >= points:
		points -= value
		return true
	else:
		return false
