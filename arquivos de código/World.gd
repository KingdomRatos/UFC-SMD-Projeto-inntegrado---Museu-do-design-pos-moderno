extends Node2D

var pontos = 0
var active = true
var mostrado = 0 

func adicionarPonto():
	pontos += 1
	print('pontos no momento:', pontos)
	
func _process(_delta):
	if pontos == 5 && mostrado == 0:
		get_tree().root.get_node("World").get_node("TelaFinal").position.x = get_tree().root.get_node("World").get_node("Camera2D").position.x
		get_tree().root.get_node("World").get_node("TelaFinal").position.y = get_tree().root.get_node("World").get_node("Camera2D").position.y
		get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").get_node("voltarMuseu").visible = 1
		get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").get_node("placa").visible = 0
		get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover = false
		get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").existe = 0




func _on_voltarMuseu_pressed():
	get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
	get_tree().root.get_node("World").get_node("TelaFinal").position.x = 1058.391
	get_tree().root.get_node("World").get_node("TelaFinal").position.y = -2051.065
	get_tree().root.get_node("World").get_node("TelaFinal").visible = 0
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").get_node("placa").visible = 1
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").get_node("voltarMuseu").visible = 0
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").existe = 1
	mostrado = 1
