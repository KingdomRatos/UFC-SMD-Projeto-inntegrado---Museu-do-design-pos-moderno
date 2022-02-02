extends Area2D
class_name npcQuiz89
var active = false
var feito = false

func _ready():
	connect("body_entered", self, '_on_NPC_body_entered')
	connect("body_exited", self, '_on_NPC_body_exited')

func _process(_delta):
	$interrogacao.visible = active

func _input(event):
		if event.is_action_pressed("ui_select") and active and !feito:
			get_tree().root.get_node("World").get_node("Quiz").sala = 8090
			get_tree().root.get_node("World").get_node("Quiz").pontos = 0
			get_tree().root.get_node("World").get_node("Quiz").quests = 1
			get_tree().root.get_node("World").get_node("Quiz").position.x = get_tree().root.get_node("World").get_node("Camera2D").position.x
			get_tree().root.get_node("World").get_node("Quiz").position.y = get_tree().root.get_node("World").get_node("Camera2D").position.y
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
