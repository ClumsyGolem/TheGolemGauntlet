extends Control

signal startGame

func _ready() -> void:
	pass

func _on_StartButton_button_up() -> void:
	emit_signal("startGame")
