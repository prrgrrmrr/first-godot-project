extends Area2D


@onready var timer = $Timer


func _on_body_entered(body: Node2D) -> void:
	print("Oh nooo!")
	Engine.time_scale = 0.5
	if timer.is_stopped():
		timer.start()
	body.get_node("CollisionShape2D").queue_free()


func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
