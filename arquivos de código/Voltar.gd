extends Sprite



func _ready():
	pass # Replace with function body.



func _on_Voltar_pressed():
	get_tree().root.get_node("World").get_node("Andares").position.x=1058.391
	get_tree().root.get_node("World").get_node("Andares").position.y=-2051.065
	get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").existe = 1

func _on_Anos50_pressed():
	get_tree().root.get_node("World").get_node("YSort").get_node("Player").position.x = 2616
	get_tree().root.get_node("World").get_node("YSort").get_node("Player").position.y = 808
	get_tree().root.get_node("World").get_node("Andares").position.x=1058.391
	get_tree().root.get_node("World").get_node("Andares").position.y=-2051.065
	get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").existe = 1
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").sala = 50
func _on_Anos60_pressed():
	get_tree().root.get_node("World").get_node("YSort").get_node("Player").position.x = 7288
	get_tree().root.get_node("World").get_node("YSort").get_node("Player").position.y = 808
	get_tree().root.get_node("World").get_node("Andares").position.x=1058.391
	get_tree().root.get_node("World").get_node("Andares").position.y=-2051.065
	get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").existe = 1
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").sala = 60


func _on_recepcao_pressed():
	get_tree().root.get_node("World").get_node("YSort").get_node("Player").position.x = 776
	get_tree().root.get_node("World").get_node("YSort").get_node("Player").position.y = 248
	get_tree().root.get_node("World").get_node("Andares").position.x=1058.391
	get_tree().root.get_node("World").get_node("Andares").position.y=-2051.065
	get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").existe = 1


func _on_Anos70I_pressed():
	get_tree().root.get_node("World").get_node("YSort").get_node("Player").position.x = 9040
	get_tree().root.get_node("World").get_node("YSort").get_node("Player").position.y = 804
	get_tree().root.get_node("World").get_node("Andares").position.x=1058.391
	get_tree().root.get_node("World").get_node("Andares").position.y=-2051.065
	get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").existe = 1
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").sala = 70


func _on_Anos70II_pressed():
	get_tree().root.get_node("World").get_node("YSort").get_node("Player").position.x = 12680
	get_tree().root.get_node("World").get_node("YSort").get_node("Player").position.y = 804
	get_tree().root.get_node("World").get_node("Andares").position.x=1058.391
	get_tree().root.get_node("World").get_node("Andares").position.y=-2051.065
	get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").existe = 1
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").sala = 70


func _on_8090_pressed():
	get_tree().root.get_node("World").get_node("YSort").get_node("Player").position.x = 15744
	get_tree().root.get_node("World").get_node("YSort").get_node("Player").position.y = 360
	get_tree().root.get_node("World").get_node("Andares").position.x=1058.391
	get_tree().root.get_node("World").get_node("Andares").position.y=-2051.065
	get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").existe = 1
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").sala = 8090
