extends Sprite

var sala
var quests
var pontos
func _process(_delta):
	get_tree().root.get_node("World").get_node("Quiz").get_node("Pontos").text = str("PTS:", pontos)
	if(sala == 60):
		if(quests == 1):
			get_tree().root.get_node("World").get_node("Quiz").get_node("pergunta").text = str("Entre os lugares que Bradburdy Thompson trabalhou e as obras que fez, é possível citar:")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button").get_node("A").text = str("Westvaco Corp e Washburn Bible.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button2").get_node("B").text = str("Pentágono e o Pôster de Vertigo.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button3").get_node("C").text = str("Sony e Albúns do Sex Pistols.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button4").get_node("D").text = str("Revista Ray Gun e Capas da Ray Gun.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button5").get_node("E").text = str("Coca-Cola e FontWorks.")
		if(quests == 2):
			get_tree().root.get_node("World").get_node("Quiz").get_node("pergunta").text = str("Quais características são perceptíveis em obras de Saul Bass?")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button").get_node("A").text = str("Necessidade Chocar o público com colagens.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button2").get_node("B").text = str("Uso de Cores Frias e Preto e Branco.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button3").get_node("C").text = str("Uso de computação gráfica em suas obras.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button4").get_node("D").text = str("Obras com características Psicodélicas.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button5").get_node("E").text = str("Cores quentes e fortes e um uso de geometria,minimalismo e silhuetas frequentes.")
		if(quests == 3):
			get_tree().root.get_node("World").get_node("Quiz").get_node("pergunta").text = str("no começo da carreira de Rosemary Tissi qual era o maior foco de suas obras?")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button").get_node("A").text = str("Cores Psicodélicas e Arabescos.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button2").get_node("B").text = str("Cores fortes e geometria irregular.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button3").get_node("C").text = str("Postura Moderna neutra com um foco maior na funcionalidade.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button4").get_node("D").text = str("Um design punk com um foco em chocar o público.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button5").get_node("E").text = str("Uso do expresionismo alemão misturado ao uso de cores quentes.")
		if(quests == 4):
			get_tree().root.get_node("World").get_node("Quiz").get_node("pergunta").text = str("Vertigo é um renomado filme do Alfred Hitchcock, a pessoa responsável pelo pôster do filme foi:")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button").get_node("A").text = str("Barney Bubbles.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button2").get_node("B").text = str("Rosemary Tissi.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button3").get_node("C").text = str("Bradbury Thompson.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button4").get_node("D").text = str("Neville Brody.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button5").get_node("E").text = str("Nenhuma das opções acima.")
		if(quests == 5):
			get_tree().root.get_node("World").get_node("Quiz").get_node("pergunta").text = str("Quanto tempo foi necessário para que Bradbury Thompson terminasse seu trabalho mais longo")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button").get_node("A").text = str("10 anos.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button2").get_node("B").text = str("4 anos.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button3").get_node("C").text = str("5 meses.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button4").get_node("D").text = str("10 meses.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button5").get_node("E").text = str("20 dias.")
		if(pontos == 5 && sala == 60):
			get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").get_node("placa").get_node("I2").modulate = Color(1,1,1,1)
			get_tree().root.get_node("World").get_node("YSort").get_node("quizParede").feito = true
	if(sala == 70):
		if(quests == 1):
			get_tree().root.get_node("World").get_node("Quiz").get_node("pergunta").text = str("April Greiman é considerada por muitos como a fundadora do New Wave,além de suas obras criativas e inovadoras ela é conhecida por:")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button").get_node("A").text = str("Ser uma das pioneiras no uso de Computadores para design gráfico.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button2").get_node("B").text = str("Ser extramamente relevante para o movimento Punk dos anos 70.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button3").get_node("C").text = str("Ter um Design que utilizava influências do Xilografismo alemão.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button4").get_node("D").text = str("Por ter sido aluna de Neville Brody.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button5").get_node("E").text = str("Ter uma relação profunda com a Escola de Tipografia Suiça.")
		if(quests == 2):
			get_tree().root.get_node("World").get_node("Quiz").get_node("pergunta").text = str("O trabalho de Wolfgang Weinghart é conhecido pelo(a):")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button").get_node("A").text = str("Design chocante e punk.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button2").get_node("B").text = str("Trabalho experimental com uma tipografia com um espaçamento diferente do encontrado na época..")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button3").get_node("C").text = str("Design psicodélico inspirado em artistas como jaime reid.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button4").get_node("D").text = str("Forte influência política em suas obras.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button5").get_node("E").text = str("fundação das artes de capa de álbum.")
		if(quests == 3):
			get_tree().root.get_node("World").get_node("Quiz").get_node("pergunta").text = str("Jaime Reid é um artista nascido na inglaterra, marcou o movimento punk no país em questão, ele é conhecido por:")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button").get_node("A").text = str("Ter influências na Arte Decó.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button2").get_node("B").text = str("Ter um design marcado por colagens e uma vida política ativa.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button3").get_node("C").text = str("Uso de influências da Art Nouveu e tipografia Suiça.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button4").get_node("D").text = str("Ser o primeiro artista a usar computadores em suas obras.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button5").get_node("E").text = str("Ser um membro do grupo Push Pin.")
		if(quests == 4):
			get_tree().root.get_node("World").get_node("Quiz").get_node("pergunta").text = str("O trabalho de Barney Bubbles foi marcado por:")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button").get_node("A").text = str("Capas marcas por símbolos e significados.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button2").get_node("B").text = str("Capas que valorizava a geometria monocromática inspirado nos trabalhos de Rosemary tissi.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button3").get_node("C").text = str("Forte inspiração no Movimento push pin graphic.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button4").get_node("D").text = str("Demorar cerca de 5 anos para cada obra que fazia.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button5").get_node("E").text = str("Ter uma vida política ativa por meio das zines.")
		if(quests == 5):
			get_tree().root.get_node("World").get_node("Quiz").get_node("pergunta").text = str("Os trabalhos de Dan Friedman são conhecidos pela(s):")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button").get_node("A").text = str("Cores Psicodélicas e Arabescos.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button2").get_node("B").text = str("Ter um influência forte no movimento push pin.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button3").get_node("C").text = str("Pouca preocupação política e social.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button4").get_node("D").text = str("Cores monocromáticas e uma preocupação social em seus trabalhos.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button5").get_node("E").text = str("Cores Frias e Quentes para criar um constrate colorido e vibrante em suas obras.")
		if(pontos == 5 && sala == 70):
			get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").get_node("placa").get_node("I4").modulate = Color(1,1,1,1)
			get_tree().root.get_node("World").get_node("YSort").get_node("quizParede70").feito = true
	if(sala == 8090):
		if(quests == 1):
			get_tree().root.get_node("World").get_node("Quiz").get_node("pergunta").text = str("Neville Brody é realizou diversos testes com a fonte Sans-Serif tendo influência do:")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button").get_node("A").text = str("Pop Art e dadáismo.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button2").get_node("B").text = str("Xilografismo Russo e Alemão.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button3").get_node("C").text = str("Art Nouveu e construtivismo Francês.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button4").get_node("D").text = str("Push Pin Style e idelógicas políticas fervorosas.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button5").get_node("E").text = str("Nenhuma das opções acima.")
		if(quests == 2):
			get_tree().root.get_node("World").get_node("Quiz").get_node("pergunta").text = str("Paula Scher incorporou em seus trabalhos tipográficos inflûencias dos(a):")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button").get_node("A").text = str("Contextos sociais e políticos dos anos 60.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button2").get_node("B").text = str("Escola Irlandesa e Russa de tipografia.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button3").get_node("C").text = str("Arte Punk e Xilografismo italiano.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button4").get_node("D").text = str("Arte psicodélica e Push Pin Style.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button5").get_node("E").text = str("Construtivismo Russo e Arte Déco.")
		if(quests == 3):
			get_tree().root.get_node("World").get_node("Quiz").get_node("pergunta").text = str("David Carson é conhecido por")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button").get_node("A").text = str("Trabalhar com tipografia experimental e ter trabalhado na Ray Gun magazine.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button2").get_node("B").text = str("Ter fortes influências do xilografismo irlandês.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button3").get_node("C").text = str("Ter sido Aluno de Honra da Escola Tipográfica Suiça.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button4").get_node("D").text = str("Design pouco inovativos e focados na funcionalidade.")
			get_tree().root.get_node("World").get_node("Quiz").get_node("Button5").get_node("E").text = str("Ser o criador do design em computadores.")
		if(pontos == 3):
			get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").get_node("placa").get_node("I5").modulate = Color(1,1,1,1)
			get_tree().root.get_node("World").get_node("YSort").get_node("quizParede89").feito = true


func _on_Button_pressed():
	if (quests == 1 || quests == 5) && sala == 60:
		pontos += 1
	elif (quests == 1 || quests == 4) && sala == 70:
		pontos += 1
	elif quests == 1 || quests == 3 && sala == 8090:
		pontos += 1
	quests += 1
	if quests == 6 || (quests == 4 && sala == 8090):
		get_tree().root.get_node("World").get_node("Quiz").position.x=4000
		get_tree().root.get_node("World").get_node("Quiz").position.y=-2008
		get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
		get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").existe = 1
	
func _on_Button2_pressed():
	if quests == 5 && sala == 60:
		pontos += 1
	elif (quests == 2 || quests == 3) && sala == 70:
		pontos += 1
	quests += 1
	if quests == 6 || (quests == 4 && sala == 8090):
		get_tree().root.get_node("World").get_node("Quiz").position.x=4000
		get_tree().root.get_node("World").get_node("Quiz").position.y=-2008
		get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
		get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").existe = 1
		
func _on_Button3_pressed():
	if quests == 3 && sala == 60:
		pontos += 1
	quests += 1
	if quests == 6 || (quests == 4 && sala == 8090):
		get_tree().root.get_node("World").get_node("Quiz").position.x=4000
		get_tree().root.get_node("World").get_node("Quiz").position.y=-2008
		get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
		get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").existe = 1
		
			

func _on_Button4_pressed():
	if quests == 5 && sala == 70:
		pontos += 1
	quests += 1
	if quests == 6 || (quests == 4 && sala == 8090):
		get_tree().root.get_node("World").get_node("Quiz").position.x=4000
		get_tree().root.get_node("World").get_node("Quiz").position.y=-2008
		get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
		get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").existe = 1
		

func _on_Button5_pressed():
	if quests == 2 || quests == 4 && sala == 60:
		pontos += 1
	elif quests == 2 && sala == 8090:
		pontos += 1
	quests += 1
	if quests == 6 || (quests == 4 && sala == 8090):
		get_tree().root.get_node("World").get_node("Quiz").position.x=4000
		get_tree().root.get_node("World").get_node("Quiz").position.y=-2008
		get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
		get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").existe = 1
		
