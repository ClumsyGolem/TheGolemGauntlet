extends Node

var totalHP: int = 0 setget set_totalHP, get_totalHP
var currentHP: int = 0 setget set_currentHP, get_currentHP
var ATK: int = 0 setget set_ATK, get_ATK
var DEF: int = 0 setget set_DEF, get_DEF

func set_totalHP(value: int) -> void:
	totalHP = value

func get_totalHP() -> int:
	return totalHP

func set_currentHP(value: int) -> void:
	currentHP = value

func get_currentHP() -> int:
	return currentHP

func set_ATK(value: int) -> void:
	ATK = value

func get_ATK() -> int:
	return ATK

func set_DEF(value: int) -> void:
	DEF = value

func get_DEF() -> int:
	return DEF

#func reset() -> void: might need???
