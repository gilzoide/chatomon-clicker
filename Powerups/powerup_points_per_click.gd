extends PowerUp
class_name PowerUpPointsPerClick

@export var points_per_click = 1


func apply(score: ScoreResource):
	score.add_points_per_click(points_per_click)
