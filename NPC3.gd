extends Area2D

var active = false

func _ready():
	connect("body_entered", self, '_on_NPC_body_entered')
	connect("body_exited", self, '_on_NPC_body_exited')

func _process(_delta):
	$interrogacao.visible = active

func _input(event):
		if event.is_action_pressed("ui_select") and active:
			get_tree().root.get_node("World").get_node("Andares").position.x = get_tree().root.get_node("World").get_node("YSort").get_node("Player").position.x+900
			get_tree().root.get_node("World").get_node("Andares").position.y = get_tree().root.get_node("World").get_node("YSort").get_node("Player").position.y+380
			get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=false



func unpause(timeline_name):
	get_tree().paused = false

func _on_NPC_body_entered(body):
	if body.name == 'Player':
		active = true

func _on_NPC_body_exited(body):
	if body.name == 'Player':
		active = false
