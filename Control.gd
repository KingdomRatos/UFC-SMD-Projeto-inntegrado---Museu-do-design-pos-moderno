extends Control

var existe = 1
var visivel = 1
var sala = 0
var quadro = 0
var autor


func _ready():
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").get_node("placa").get_node("I1").modulate = Color(1,1,1,0)
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").get_node("placa").get_node("I2").modulate = Color(1,1,1,0)
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").get_node("placa").get_node("I3").modulate = Color(1,1,1,0)
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").get_node("placa").get_node("I4").modulate = Color(1,1,1,0)
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").get_node("placa").get_node("I5").modulate = Color(1,1,1,0)
	$setaD.visible = 0
	$setaE.visible = 0
	$sairquadro.visible = 0
	
func _on_clickMapa_pressed():
	existe = 0
	get_tree().root.get_node("World").get_node("Andares").position.x = get_tree().root.get_node("World").get_node("Camera2D").position.x
	get_tree().root.get_node("World").get_node("Andares").position.y = get_tree().root.get_node("World").get_node("Camera2D").position.y
	get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=false

func _process(delta):
	$mapa.visible = existe
	$SoundBar.visible = !visivel
	$som.visible = visivel


func _on_clickSom_pressed():
	visivel = 0


func _on_sair_pressed():
	visivel = 1

func _on_setaD_pressed():
	if sala == 0:
		if quadro == 0:
			get_tree().root.get_node("World").get_node("quadros").get_node("Poster Recepcao1").position.x=1058.391
			get_tree().root.get_node("World").get_node("quadros").get_node("Poster Recepcao1").position.y=-2051.065
			get_tree().root.get_node("World").get_node("quadros").get_node("Poster Recepcao2").position.x = get_tree().root.get_node("World").get_node("Camera2D").position.x
			get_tree().root.get_node("World").get_node("quadros").get_node("Poster Recepcao2").position.y = get_tree().root.get_node("World").get_node("Camera2D").position.y
			quadro = 1
		elif quadro == 1:
			get_tree().root.get_node("World").get_node("quadros").get_node("Poster Recepcao2").position.x=1058.391
			get_tree().root.get_node("World").get_node("quadros").get_node("Poster Recepcao2").position.y=-2051.065
			get_tree().root.get_node("World").get_node("quadros").get_node("Poster Recepcao1").position.x = get_tree().root.get_node("World").get_node("Camera2D").position.x
			get_tree().root.get_node("World").get_node("quadros").get_node("Poster Recepcao1").position.y = get_tree().root.get_node("World").get_node("Camera2D").position.y
			quadro = 0
	elif sala == 50:
		if autor == 'Seymor':
			if (get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadro <2):
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadro += 1
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").proximoquadro()
			else:
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadro = 0
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").proximoquadro()
		elif autor == 'Sorel':
			if (get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro5").quadro <2):
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro5").quadro += 1
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro5").proximoquadro()
			else:
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro5").quadro = 0
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro5").proximoquadro()
		elif autor == 'Milton':
			if (get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro6").quadro <2):
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro6").quadro += 1
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro6").proximoquadro()
			else:
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro6").quadro = 0
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro6").proximoquadro()
	elif sala == 60:
		if autor == 'Bass':
			if (get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroBass").quadro <2):
				get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroBass").quadro += 1
				get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroBass").proximoquadro()
			else:
				get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroBass").quadro = 0
				get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroBass").proximoquadro()
		elif autor == 'Tissi':
			if (get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroTissi").quadro <2):
				get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroTissi").quadro += 1
				get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroTissi").proximoquadro()
			else:
				get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroTissi").quadro = 0
				get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroTissi").proximoquadro()
		elif autor == 'Thomson':
			if (get_tree().root.get_node("World").get_node("YSort").get_node("quadroThomson").quadro <2):
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroThomson").quadro += 1
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroThomson").proximoquadro()
			else:
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroThomson").quadro = 0
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroThomson").proximoquadro()
	elif sala == 70:
		if autor == 'Dan':
			if (get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroDan").quadro <2):
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroDan").quadro += 1
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroDan").proximoquadro()
			else:
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroDan").quadro = 0
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroDan").proximoquadro()
		if autor == 'April':
			if (get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroApril").quadro <2):
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroApril").quadro += 1
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroApril").proximoquadro()
			else:
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroApril").quadro = 0
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroApril").proximoquadro()

		if autor == 'Wolfgang':
			if (get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroWolfgang").quadro <2):
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroWolfgang").quadro += 1
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroWolfgang").proximoquadro()
			else:
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroWolfgang").quadro = 0
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroWolfgang").proximoquadro()
		if autor == 'Jaime':
			if (get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroJaime").quadro <2):
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroJaime").quadro += 1
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroJaime").proximoquadro()
			else:
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroJaime").quadro = 0
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroJaime").proximoquadro()

		if autor == 'Barney':
			if (get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroBarney").quadro <2):
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroBarney").quadro += 1
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroBarney").proximoquadro()
			else:
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroBarney").quadro = 0
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroBarney").proximoquadro()
		if autor == 'Gerard':
			if (get_tree().root.get_node("World").get_node("YSort").get_node("quadroGerard").quadro <1):
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroGerard").quadro += 1
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroGerard").proximoquadro()
			else:
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroGerard").quadro = 0
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroGerard").proximoquadro()
	elif sala == 8090:
		if autor == 'Brody':
			if (get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroBrody").quadro <2):
				get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroBrody").quadro += 1
				get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroBrody").proximoquadro()
			else:
				get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroBrody").quadro = 0
				get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroBrody").proximoquadro()
		elif autor == 'Paula':
			if (get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroPaula").quadro <2):
				get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroPaula").quadro += 1
				get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroPaula").proximoquadro()
			else:
				get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroPaula").quadro = 0
				get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroPaula").proximoquadro()
		elif autor == 'Ed':
			if (get_tree().root.get_node("World").get_node("YSort").get_node("quadroEd").quadro <2):
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroEd").quadro += 1
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroEd").proximoquadro()
			else:
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroEd").quadro = 0
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroEd").proximoquadro()
		elif autor == 'David':
			if (get_tree().root.get_node("World").get_node("YSort").get_node("quadroDavid").quadro <2):
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroDavid").quadro += 1
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroDavid").proximoquadro()
			else:
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroDavid").quadro = 0
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroDavid").proximoquadro()




func _on_setaE_pressed():
	if sala == 0:
		if quadro == 0:
			get_tree().root.get_node("World").get_node("quadros").get_node("Poster Recepcao1").position.x=1058.391
			get_tree().root.get_node("World").get_node("quadros").get_node("Poster Recepcao1").position.y=-2051.065
			get_tree().root.get_node("World").get_node("quadros").get_node("Poster Recepcao2").position.x = get_tree().root.get_node("World").get_node("Camera2D").position.x
			get_tree().root.get_node("World").get_node("quadros").get_node("Poster Recepcao2").position.y = get_tree().root.get_node("World").get_node("Camera2D").position.y
			quadro = 1
		elif quadro == 1:
			get_tree().root.get_node("World").get_node("quadros").get_node("Poster Recepcao2").position.x=1058.391
			get_tree().root.get_node("World").get_node("quadros").get_node("Poster Recepcao2").position.y=-2051.065
			get_tree().root.get_node("World").get_node("quadros").get_node("Poster Recepcao1").position.x = get_tree().root.get_node("World").get_node("Camera2D").position.x
			get_tree().root.get_node("World").get_node("quadros").get_node("Poster Recepcao1").position.y = get_tree().root.get_node("World").get_node("Camera2D").position.y
			quadro = 0
	elif sala == 50:
		if autor == 'Seymor':
			if (get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadro > 0):
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadroanterior()
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadro -= 1
			else:
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadroanterior()
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadro = 2
		elif autor == 'Sorel':
			if (get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro5").quadro > 0):
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro5").quadroanterior()
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro5").quadro -= 1
			else:
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro5").quadroanterior()
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro5").quadro = 2
		elif autor == 'Milton':
			if (get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro6").quadro > 0):
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro6").quadroanterior()
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro6").quadro -= 1
			else:
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro6").quadroanterior()
				get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro6").quadro = 2
	elif sala == 60:
		if autor == 'Bass':
			if (get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroBass").quadro > 0):
				get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroBass").quadroanterior()
				get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroBass").quadro -= 1
			else:
				get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroBass").quadroanterior()
				get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroBass").quadro = 2
		elif autor == 'Tissi':
			if (get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroTissi").quadro > 0):
				get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroTissi").quadroanterior()
				get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroTissi").quadro -= 1
			else:
				get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroTissi").quadroanterior()
				get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroTissi").quadro = 2
		elif autor == 'Thomson':
			if (get_tree().root.get_node("World").get_node("YSort").get_node("quadroThomson").quadro > 0):
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroThomson").quadroanterior()
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroThomson").quadro -= 1
			else:
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroThomson").quadroanterior()
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroThomson").quadro = 2
	elif sala == 70:
		if autor == 'Dan':
			if (get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroDan").quadro > 0):
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroDan").quadroanterior()
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroDan").quadro -= 1
			else:
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroDan").quadroanterior()
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroDan").quadro = 2
		if autor == 'April':
			if (get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroApril").quadro > 0):
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroApril").quadroanterior()
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroApril").quadro -= 1
			else:
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroApril").quadroanterior()
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroApril").quadro = 2

		if autor == 'Wolfgang':
			if (get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroWolfgang").quadro > 0):
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroWolfgang").quadroanterior()
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroWolfgang").quadro -= 1
			else:
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroWolfgang").quadroanterior()
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroWolfgang").quadro = 2
		if autor == 'Jaime':
			if (get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroJaime").quadro > 0):
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroJaime").quadroanterior()
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroJaime").quadro -= 1
			else:
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroJaime").quadroanterior()
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroJaime").quadro = 2
		if autor == 'Barney':
			if (get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroBarney").quadro > 0):
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroBarney").quadroanterior()
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroBarney").quadro -= 1
			else:
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroBarney").quadroanterior()
				get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroBarney").quadro = 2
		if autor == 'Gerard':
			if (get_tree().root.get_node("World").get_node("YSort").get_node("quadroGerard").quadro > 0):
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroGerard").quadroanterior()
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroGerard").quadro -= 1
			else:
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroGerard").quadroanterior()
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroGerard").quadro = 1
	elif sala == 8090:
		if autor == 'Brody':
			if (get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroBrody").quadro > 0):
				get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroBrody").quadroanterior()
				get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroBrody").quadro -= 1
			else:
				get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroBrody").quadroanterior()
				get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroBrody").quadro = 2
		elif autor == 'Paula':
			if (get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroPaula").quadro > 0):
				get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroPaula").quadroanterior()
				get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroPaula").quadro -= 1
			else:
				get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroPaula").quadroanterior()
				get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroPaula").quadro = 2
		elif autor == 'Ed':
			if (get_tree().root.get_node("World").get_node("YSort").get_node("quadroEd").quadro > 0):
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroEd").quadroanterior()
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroEd").quadro -= 1
			else:
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroEd").quadroanterior()
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroEd").quadro = 2
		elif autor == 'David':
			if (get_tree().root.get_node("World").get_node("YSort").get_node("quadroDavid").quadro > 0):
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroDavid").quadroanterior()
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroDavid").quadro -= 1
			else:
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroDavid").quadroanterior()
				get_tree().root.get_node("World").get_node("YSort").get_node("quadroDavid").quadro = 2



func _on_sairQuadro_pressed():
	if sala == 50:
		$setaE.visible = 0
		$setaD.visible = 0
		$sairquadro.visible = 0
		existe = 1
		if autor == 'Seymor':
			get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadrosSeymour[get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadro].position.x=1058.391
			get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadrosSeymour[get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadro].position.y=-2051.065
			get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").active = true
			get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
		elif autor == 'Sorel':
			get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro5").quadrosSorel[get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro5").quadro].position.x=1058.391
			get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro5").quadrosSorel[get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro5").quadro].position.y=-2051.065
			get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro5").active = true
			get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
		elif autor == 'Milton':
			get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro6").quadrosMilton[get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro6").quadro].position.x=1058.391
			get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro6").quadrosMilton[get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro6").quadro].position.y=-2051.065
			get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro6").active = true
			get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
	elif sala == 60:
		$setaE.visible = 0
		$setaD.visible = 0
		$sairquadro.visible = 0
		existe = 1
		if autor == 'Bass':
			get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroBass").quadrosBass[get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroBass").quadro].position.x=1058.391
			get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroBass").quadrosBass[get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroBass").quadro].position.y=-2051.065
			get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroBass").active = true
			get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
		elif autor == 'Tissi':
			get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroTissi").quadrosTissi[get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroTissi").quadro].position.x=1058.391
			get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroTissi").quadrosTissi[get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroTissi").quadro].position.y=-2051.065
			get_tree().root.get_node("World").get_node("sala anos 60").get_node("quadroTissi").active = true
			get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
		elif autor == 'Thomson':
			get_tree().root.get_node("World").get_node("YSort").get_node("quadroThomson").quadrosThomson[get_tree().root.get_node("World").get_node("YSort").get_node("quadroThomson").quadro].position.x=1058.391
			get_tree().root.get_node("World").get_node("YSort").get_node("quadroThomson").quadrosThomson[get_tree().root.get_node("World").get_node("YSort").get_node("quadroThomson").quadro].position.y=-2051.065
			get_tree().root.get_node("World").get_node("YSort").get_node("quadroThomson").active = true
			get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
	elif sala == 70:
		$setaE.visible = 0
		$setaD.visible = 0
		$sairquadro.visible = 0
		existe = 1
		if autor == 'Dan':
			get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroDan").quadrosDan[get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroDan").quadro].position.x=1058.391
			get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroDan").quadrosDan[get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroDan").quadro].position.y=-2051.065
			get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroDan").active = true
			get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
		if autor == 'April':
			get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroApril").quadrosApril[get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroApril").quadro].position.x=1058.391
			get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroApril").quadrosApril[get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroApril").quadro].position.y=-2051.065
			get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroApril").active = true
			get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true

		if autor == 'Wolfgang':
			get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroWolfgang").quadrosWolfgang[get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroWolfgang").quadro].position.x=1058.391
			get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroWolfgang").quadrosWolfgang[get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroWolfgang").quadro].position.y=-2051.065
			get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroWolfgang").active = true
			get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
		if autor == 'Jaime':
			get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroJaime").quadrosJaime[get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroJaime").quadro].position.x=1058.391
			get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroJaime").quadrosJaime[get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroJaime").quadro].position.y=-2051.065
			get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroJaime").active = true
			get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
		if autor == 'Barney':
			get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroBarney").quadrosBarney[get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroBarney").quadro].position.x=1058.391
			get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroBarney").quadrosBarney[get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroBarney").quadro].position.y=-2051.065
			get_tree().root.get_node("World").get_node("Sala 701").get_node("quadroBarney").active = true
			get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
		if autor == 'Gerard':
			get_tree().root.get_node("World").get_node("YSort").get_node("quadroGerard").quadrosGerard[get_tree().root.get_node("World").get_node("YSort").get_node("quadroGerard").quadro].position.x=1058.391
			get_tree().root.get_node("World").get_node("YSort").get_node("quadroGerard").quadrosGerard[get_tree().root.get_node("World").get_node("YSort").get_node("quadroGerard").quadro].position.y=-2051.065
			get_tree().root.get_node("World").get_node("YSort").get_node("quadroGerard").active = true
			get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
	elif sala == 8090:
		$setaE.visible = 0
		$setaD.visible = 0
		$sairquadro.visible = 0
		existe = 1
		if autor == 'Brody':
			get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroBrody").quadrosBrody[get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroBrody").quadro].position.x=1058.391
			get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroBrody").quadrosBrody[get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroBrody").quadro].position.y=-2051.065
			get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroBrody").active = true
			get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
		elif autor == 'Paula':
			get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroPaula").quadrosPaula[get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroPaula").quadro].position.x=1058.391
			get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroPaula").quadrosPaula[get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroPaula").quadro].position.y=-2051.065
			get_tree().root.get_node("World").get_node("sala anos 8090").get_node("quadroPaula").active = true
			get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
		elif autor == 'Ed':
			get_tree().root.get_node("World").get_node("YSort").get_node("quadroEd").quadrosEd[get_tree().root.get_node("World").get_node("YSort").get_node("quadroEd").quadro].position.x=1058.391
			get_tree().root.get_node("World").get_node("YSort").get_node("quadroEd").quadrosEd[get_tree().root.get_node("World").get_node("YSort").get_node("quadroEd").quadro].position.y=-2051.065
			get_tree().root.get_node("World").get_node("YSort").get_node("quadroEd").active = true
			get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
		elif autor == 'David':
			get_tree().root.get_node("World").get_node("YSort").get_node("quadroDavid").quadrosDavid[get_tree().root.get_node("World").get_node("YSort").get_node("quadroDavid").quadro].position.x=1058.391
			get_tree().root.get_node("World").get_node("YSort").get_node("quadroDavid").quadrosDavid[get_tree().root.get_node("World").get_node("YSort").get_node("quadroDavid").quadro].position.y=-2051.065
			get_tree().root.get_node("World").get_node("YSort").get_node("quadroDavid").active = true
			get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true













