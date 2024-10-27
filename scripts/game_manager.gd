extends Node

@onready var label = $Label
var score = 0

func add_point():
	score += 1
	label.text = "SCORE " + str(score)
