extends Sprite

var quests = 1
var pontos = 0
func _process(delta):
	get_tree().root.get_node("World").get_node("Quiz").get_node("Pontos").text = str("PTS:", pontos)
	if(quests == 1):
		get_tree().root.get_node("World").get_node("Quiz").get_node("pergunta").text = str("Pergunta 1")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button").get_node("A").text = str("item A1")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button2").get_node("B").text = str("item B1")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button3").get_node("C").text = str("item C1")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button4").get_node("D").text = str("item D1")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button5").get_node("E").text = str("item E1")
	if(quests == 2):
		get_tree().root.get_node("World").get_node("Quiz").get_node("pergunta").text = str("Pergunta 2")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button").get_node("A").text = str("item A2")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button2").get_node("B").text = str("item B2")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button3").get_node("C").text = str("item C2")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button4").get_node("D").text = str("item D2")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button5").get_node("E").text = str("item E2")
	if(quests == 3):
		get_tree().root.get_node("World").get_node("Quiz").get_node("pergunta").text = str("Pergunta 3")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button").get_node("A").text = str("item A3")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button2").get_node("B").text = str("item B3")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button3").get_node("C").text = str("item C3")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button4").get_node("D").text = str("item D3")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button5").get_node("E").text = str("item E3")
	if(quests == 4):
		get_tree().root.get_node("World").get_node("Quiz").get_node("pergunta").text = str("Pergunta 4")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button").get_node("A").text = str("item A4")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button2").get_node("B").text = str("item B4")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button3").get_node("C").text = str("item C4")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button4").get_node("D").text = str("item D4")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button5").get_node("E").text = str("item E4")
	if(quests == 5):
		get_tree().root.get_node("World").get_node("Quiz").get_node("pergunta").text = str("Pergunta 5")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button").get_node("A").text = str("item A5")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button2").get_node("B").text = str("item B5")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button3").get_node("C").text = str("item C5")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button4").get_node("D").text = str("item D5")
		get_tree().root.get_node("World").get_node("Quiz").get_node("Button5").get_node("E").text = str("item E5")
	if(pontos == 5):
		get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").get_node("placa").get_node("I1").modulate = Color(1,1,1,1)


func _on_Button_pressed():
	if quests == 1:
		pontos += 1
	quests += 1
	if quests == 6:
		get_tree().root.get_node("World").get_node("Quiz").position.x=4000
		get_tree().root.get_node("World").get_node("Quiz").position.y=-2008
		get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
		get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").existe = 1
		get_tree().root.get_node("World").get_node("YSort").get_node("NPC2").feito = true
	
func _on_Button2_pressed():
	if quests == 2:
		pontos += 1
	quests += 1
	if quests == 6:
		get_tree().root.get_node("World").get_node("Quiz").position.x=4000
		get_tree().root.get_node("World").get_node("Quiz").position.y=-2008
		get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
		get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").existe = 1
		get_tree().root.get_node("World").get_node("YSort").get_node("NPC2").feito = true
func _on_Button3_pressed():
	if quests == 3:
		pontos += 1
	quests += 1
	if quests == 6:
		get_tree().root.get_node("World").get_node("Quiz").position.x=4000
		get_tree().root.get_node("World").get_node("Quiz").position.y=-2008
		get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
		get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").existe = 1
		get_tree().root.get_node("World").get_node("YSort").get_node("NPC2").feito = true

func _on_Button4_pressed():
	if quests == 4:
		pontos += 1
	quests += 1
	if quests == 6:
		get_tree().root.get_node("World").get_node("Quiz").position.x=4000
		get_tree().root.get_node("World").get_node("Quiz").position.y=-2008
		get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
		get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").existe = 1
		get_tree().root.get_node("World").get_node("YSort").get_node("NPC2").feito = true

func _on_Button5_pressed():
	if quests == 5:
		pontos += 1
	quests += 1
	if quests == 6:
		get_tree().root.get_node("World").get_node("Quiz").position.x=4000
		get_tree().root.get_node("World").get_node("Quiz").position.y=-2008
		get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
		get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").existe = 1
		get_tree().root.get_node("World").get_node("YSort").get_node("NPC2").feito = true
