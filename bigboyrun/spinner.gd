extends RigidBody2D

export (int) var MIN_ROT_SPEED
export (int) var MAX_ROT_SPEED
var direction
var rot_speed

func _ready():
	randomize()
	direction = [1, -1][randi() % 2]
	rot_speed = rand_range(MIN_ROT_SPEED, MAX_ROT_SPEED)

func _process(delta):
	angular_velocity = rot_speed * delta * direction * 50

func _on_chromebook_body_entered(body):
	if body.is_in_group("kill_object"):
		queue_free()
