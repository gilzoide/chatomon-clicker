extends Control


@export var score: ScoreResource
@export var powerup: PowerUp

@onready var buy_button: Button = $BuyGroup/BuyButton


func _ready():
	$Texts/Title.text = powerup.title
	$Texts/Description.text = powerup.description
	$BuyGroup/Texts/Value.text = str(powerup.cost)
	score.on_points_changed.connect(_on_points_changed)
	_on_points_changed(score.points)


func _on_points_changed(points):
	buy_button.disabled = not score.can_spend(powerup.cost)


func _on_buy_button_pressed():
	if score.spend_points(powerup.cost):
		powerup.apply(score)
