extends Area2D


var active = false
#var 
var quadro
var quadrosBass
var aux

func _ready():
	connect("body_entered", self, '_on_NPC_body_entered')
	connect("body_exited", self, '_on_NPC_body_exited')
	quadrosBass = [get_tree().root.get_node("World").get_node("quadros").get_node("anos 60").get_node("Bass1"), get_tree().root.get_node("World").get_node("quadros").get_node("anos 60").get_node("Bass2"), get_tree().root.get_node("World").get_node("quadros").get_node("anos 60").get_node("Bass3")]

func _process(_delta):
	$interrogacao.visible = active
		
func proximoquadro():
	quadrosBass[quadro-1].position.x = 1058.391
	quadrosBass[quadro-1].position.y = -2051.065
	quadrosBass[quadro].position.x = get_tree().root.get_node("World").get_node("Camera2D").position.x
	quadrosBass[quadro].position.y = get_tree().root.get_node("World").get_node("Camera2D").position.y
func quadroanterior():
	if(quadro == 0):
		quadrosBass[quadro].position.x = 1058.391
		quadrosBass[quadro].position.y = -2051.065
		quadrosBass[quadro+2].position.x = get_tree().root.get_node("World").get_node("Camera2D").position.x
		quadrosBass[quadro+2].position.y = get_tree().root.get_node("World").get_node("Camera2D").position.y
	else:
		quadrosBass[quadro].position.x = 1058.391
		quadrosBass[quadro].position.y = -2051.065
		quadrosBass[quadro-1].position.x = get_tree().root.get_node("World").get_node("Camera2D").position.x
		quadrosBass[quadro-1].position.y = get_tree().root.get_node("World").get_node("Camera2D").position.y
	

func _input(event):
		if event.is_action_pressed("ui_select") and active:
			get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").autor = 'Bass'
			quadro = 0
			active = false
			quadrosBass[quadro].position.x = get_tree().root.get_node("World").get_node("Camera2D").position.x
			quadrosBass[quadro].position.y = get_tree().root.get_node("World").get_node("Camera2D").position.y
			get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").get_node("setaD").visible = 1
			get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").get_node("setaE").visible = 1
			get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").get_node("sairquadro").visible = 1
			get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=false
			get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").existe = 0



func unpause(timeline_name):
	get_tree().paused = false

func _on_NPC_body_entered(body):
	if body.name == 'Player':
		active = true

func _on_NPC_body_exited(body):
	if body.name == 'Player':
		active = false


func _on_Button_pressed():
	if get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").quadro == 0:
		get_tree().root.get_node("World").get_node("quadros").get_node("Poster Recepcao1").position.x=1058.391
		get_tree().root.get_node("World").get_node("quadros").get_node("Poster Recepcao1").position.y=-2051.065
	if get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").quadro == 1:
		get_tree().root.get_node("World").get_node("quadros").get_node("Poster Recepcao2").position.x=1058.391
		get_tree().root.get_node("World").get_node("quadros").get_node("Poster Recepcao2").position.y=-2051.065
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").get_node("setaD").visible = 0
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").get_node("setaE").visible = 0
	get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=true
	get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").existe = 1
