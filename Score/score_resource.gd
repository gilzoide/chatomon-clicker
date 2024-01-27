extends Resource
class_name ScoreResource

signal on_points_changed(value: float)
signal on_points_per_click_changed(value: float)
signal on_clicks_per_second_changed(value: float)

@export var points: float = 0
@export var points_per_click: float = 1
@export var clicks_per_second: float = 0


func add_points_from_click(clicks: float = 1):
	add_points(clicks * points_per_click)


func add_points(value: float):
	if value == 0:
		return
	points += value
	on_points_changed.emit(points)


func can_spend(value: float) -> bool:
	return value <= points


func spend_points(value: float) -> bool:
	if can_spend(value):
		points -= value
		on_points_changed.emit(points)
		return true
	else:
		return false


func add_clicks_per_second(value: float):
	assert(value > 0)
	clicks_per_second += value
	on_clicks_per_second_changed.emit(clicks_per_second)


func add_points_per_click(value: float):
	assert(value > 0)
	points_per_click += value
	on_points_per_click_changed.emit(points_per_click)
