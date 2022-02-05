extends KinematicBody2D
class_name Player

var podemover = true
const maxSpeed = 400
const acceleration = 2500
const friction = 2500

enum{
	MOVER,
	INTERAGIR
}

var velocity = Vector2.ZERO
var estado = MOVER


onready var animationPlayer = $AnimationPlayer
onready var animationTree = $AnimationTree
onready var animationState = animationTree.get("parameters/playback")

func on_ready():
	$Passos.play()

func _physics_process(delta):
	match estado:
		MOVER:
			estado_movimento(delta)




func estado_movimento(delta):
	if podemover==true:
		var inputVector = Vector2.ZERO
		inputVector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
		inputVector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
		inputVector = inputVector.normalized()
	
		if inputVector != Vector2.ZERO:
			animationTree.set("parameters/Idle/blend_position", inputVector)
			animationTree.set("parameters/Run/blend_position", inputVector)
			animationState.travel("Run")
			velocity = velocity.move_toward(inputVector * maxSpeed, acceleration * delta)
		else:
			animationState.travel("Idle")
			velocity = velocity.move_toward(Vector2.ZERO, friction * delta)
			$Passos.stop()

		velocity = move_and_slide(velocity)





func _on_NPC2_body_entered(body):
	pass # Replace with function body.



