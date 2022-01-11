extends Control

var existe = 1
var visivel = 1
var sala = 0
var quadro = 0


func _ready():
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").get_node("placa").get_node("I1").modulate = Color(1,1,1,0)
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
		if (get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadro <2):
			get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadro += 1
			get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").proximoquadro()
		else:
			get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadro = 0
			get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").proximoquadro()

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
		if (get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadro > 0):
			get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadroanterior()
			get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadro -= 1
		else:
			get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadroanterior()
			get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadro = 2


func _on_sairQuadro_pressed():
	if sala == 50:
		$setaE.visible = 0
		$setaD.visible = 0
		$sairquadro.visible = 0
		existe = 1
		get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadrosSeymour[get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadro].position.x=1058.391
		get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadrosSeymour[get_tree().root.get_node("World").get_node("sala anos 50").get_node("quadro4").quadro].position.y=-2051.065
		get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true


