extends HScrollBar


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_HScrollBar_scrolling():
	print(value)
	get_tree().root.get_node("World").get_node("Node").get_node("AudioStreamPlayer").volume_db=value-100
