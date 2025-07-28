extends Camera2D
@onready var player = $"../Player"

func _ready() -> void:
	print(player)
func _process(delta: float) -> void:
	position.x = player.position.x
