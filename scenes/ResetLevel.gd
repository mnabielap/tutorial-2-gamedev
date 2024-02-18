extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_ResetLevel_body_entered(body):
	if (body.name == "BlueShip" or body.name == "GreenShip"):
		print("Anda Terjatuhhh!!!!")
		var current_scene = get_tree().get_current_scene().get_name()
		if current_scene == "MainLevel":
			get_tree().change_scene("res://scenes/MainLevel.tscn")
		elif current_scene == "Level2":
			get_tree().change_scene("res://scenes/Level2.tscn")
