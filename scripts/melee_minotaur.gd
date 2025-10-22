extends Node

var timer = 1
var health = 10
var maxHealth = 10

func _process(delta: float) -> void:
	timer -=delta
	
func change_health(_amount:int):
	if timer<0:
		health += _amount
		timer = .67
	if health < 1:
		queue_free()
	if health > maxHealth:
		health = maxHealth
	print("Health: ", health)
