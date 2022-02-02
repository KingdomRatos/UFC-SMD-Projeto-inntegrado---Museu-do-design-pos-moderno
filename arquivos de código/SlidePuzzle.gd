extends Area2D

var active = false

func _ready():
	connect("body_entered", self, '_on_NPC_body_entered')
	connect("body_exited", self, '_on_NPC_body_exited')

func _process(delta):
	$interrogacao.visible = active

func _input(event):
	if get_node_or_null('DialogNode') == null:
		if event.is_action_pressed("ui_select") and active:
			get_tree().root.get_node("World").get_node("CanvasLayer").get_node("Board").visible=true
			get_tree().root.get_node("World").get_node("YSort").get_node("Player").podemover=false

func unpause(timeline_name):
	get_tree().paused = false

func _on_NPC_body_entered(body):
	if body.name == 'Player':
		active = true

func _on_NPC_body_exited(body):
	if body.name == 'Player':
		active = false
