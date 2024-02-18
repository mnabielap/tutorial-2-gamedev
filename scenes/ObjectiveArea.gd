extends Area2D

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip" or body.name == "GreenShip"):
		print("Reached objective!")
		var current_scene = get_tree().get_current_scene().get_name()
		if current_scene == "MainLevel":
			get_tree().change_scene("res://scenes/LevelUpScreen.tscn")
		elif current_scene == "Level2":
			get_tree().change_scene("res://scenes/WinScreen.tscn")
