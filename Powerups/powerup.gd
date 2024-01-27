extends Resource
class_name PowerUp


@export var title: String = "Power Up"
@export_multiline var description: String = "Description"
@export var cost: float = 10


func apply(score: ScoreResource):
	assert(false, "FIXME: Implement in subclass")
