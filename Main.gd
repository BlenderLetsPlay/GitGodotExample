extends Control


onready var btn := $Center/VBox/Button

onready var label := $Center/VBox/Label

export var counter := 0 setget set_counter

func set_counter(val: int)->void:
	counter = val
	label.set_text("%04d" % counter)

func _on_Button_pressed():
	set_counter(counter + 1)
