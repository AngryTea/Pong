extends StaticBody2D

func hit():
	if name == "leftWall":
		get_parent().get_node("right").addPoints()
	else:
		get_parent().get_node("left").addPoints()