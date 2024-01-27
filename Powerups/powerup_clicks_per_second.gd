extends PowerUp
class_name PowerUpClicksPerSecond

@export var clicks_per_second: float = 0.1


func apply(score: ScoreResource):
	score.add_clicks_per_second(clicks_per_second)
