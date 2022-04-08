extends Node2D

var golem: PackedScene = preload("res://src/Actors/Golem.tscn") #makes the golem scene available for use.

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func GenerateGolem(golemName) -> void:
	var newGolem = golem.instance() #instance the golem scene
	newGolem.init(golemName) #initialize randomized stats


#------------LISTENERS----------------

#listener for the generate_golem signal
func _on_GolemCreation_generate_golem(golemName) -> void:
	GenerateGolem(golemName)
