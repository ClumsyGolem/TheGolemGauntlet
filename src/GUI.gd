extends Control

onready var screenTransition: AnimationPlayer = $TransitionLayer/TransitionPlayer

func _ready() -> void:
	pass


func _on_TitleScreen_startGame() -> void:
	screenTransition.play("FadeToBlack")
	yield(screenTransition, "animation_finished")
	$TitleScreen.hide()
	$GolemCreation.show()
	screenTransition.play("FadeBackIn")
