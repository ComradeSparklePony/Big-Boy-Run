extends Node2D

export (PackedScene) var phone
export (PackedScene) var spinner
export (PackedScene) var chromebook

var items

func _ready():
	randomize()
	items = [phone, spinner, chromebook]
	$Timer.wait_time = 2

func _process(delta):
	$Label.text = "points: " + str($player.points)


func _on_Timer_timeout():
	$Timer.wait_time = rand_range(0.1, 3)
	var new = items[randi() % 3].instance()
	new.position = Vector2(rand_range(200, 400), rand_range(200, 400))
	add_child(new)
