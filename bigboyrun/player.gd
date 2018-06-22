extends RigidBody2D

export (int) var SPEED

onready var points = 0

func _ready():
	randomize()
	$Timer.wait_time = 0.01
	

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_left"):
		apply_impulse(Vector2(0, 480), Vector2(-SPEED, 0))
	
	if Input.is_action_just_pressed("ui_right"):
		apply_impulse(Vector2(640, 480), Vector2(SPEED, 0))
	
	if position.length() > 1000:
		position = Vector2(200, 200)
		



	


func _on_Timer_timeout():
	$Timer.wait_time = rand_range(0.1, 1)
	points += rand_range(987.827, 5104.68)
