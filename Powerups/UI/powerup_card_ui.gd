extends Control


@export var score: ScoreResource
@export var powerup: PowerUp


func _ready():
	$Texts/Title.text = powerup.title
	$Texts/Description.text = powerup.description
	$BuyGroup/Texts/Value.text = str(powerup.cost)


func _on_buy_button_pressed():
	if score.spend_points(powerup.cost):
		powerup.apply(score)
