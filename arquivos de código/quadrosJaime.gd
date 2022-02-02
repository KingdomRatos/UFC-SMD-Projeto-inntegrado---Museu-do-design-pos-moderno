extends Area2D


var active = false
#var 
var quadro
var quadrosJaime
var aux

func _ready():
	connect("body_entered", self, '_on_NPC_body_entered')
	connect("body_exited", self, '_on_NPC_body_exited')
	quadrosJaime = [get_tree().root.get_node("World").get_node("quadros").get_node("anos 701").get_node("Jaime1"), get_tree().root.get_node("World").get_node("quadros").get_node("anos 701").get_node("Jaime2"), get_tree().root.get_node("World").get_node("quadros").get_node("anos 701").get_node("Jaime3")]

func _process(_delta):
	$interrogacao.visible = active
		
func proximoquadro():
	quadrosJaime[quadro-1].position.x = 1058.391
	quadrosJaime[quadro-1].position.y = -2051.065
	quadrosJaime[quadro].position.x = get_tree().root.get_node("World").get_node("Camera2D").position.x
	quadrosJaime[quadro].position.y = get_tree().root.get_node("World").get_node("Camera2D").position.y
func quadroanterior():
	if(quadro == 0):
		quadrosJaime[quadro].position.x = 1058.391
		quadrosJaime[quadro].position.y = -2051.065
		quadrosJaime[quadro+2].position.x = get_tree().root.get_node("World").get_node("Camera2D").position.x
		quadrosJaime[quadro+2].position.y = get_tree().root.get_node("World").get_node("Camera2D").position.y
	else:
		quadrosJaime[quadro].position.x = 1058.391
		quadrosJaime[quadro].position.y = -2051.065
		quadrosJaime[quadro-1].position.x = get_tree().root.get_node("World").get_node("Camera2D").position.x
		quadrosJaime[quadro-1].position.y = get_tree().root.get_node("World").get_node("Camera2D").position.y
	

func _input(event):
		if event.is_action_pressed("ui_select") and active:
			get_tree().root.get_node("World").get_node("CanvasLayer").get_node("UI").autor = 'Jaime'
			quadro = 0
			active = false
			quadrosJaime[quadro].position.x = get_tree().root.get_node("World").get_node("Camera2D").position.x
			quadrosJaime[quadro].position.y = get_tree().root.get_node("World").get_node("Camera2D").position.y
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





