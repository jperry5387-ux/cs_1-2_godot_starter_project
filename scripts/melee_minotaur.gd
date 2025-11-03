extends Node

var timer = 1
var health = 10
var maxHealth = 10
var in_range = false
var attacking = false
var chasing = false
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

func _on_body_entered(delta: float) -> void:
	pass



func _on_melee_body_entered(body: Node2D) -> void:
	pass # Replace with function body.






func _on_melee_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
	if body.name == "player":
		attacking = true
		chasing = false







func _on_chase_area_shape_entered(body: Node2D) -> void:
	pass # Replace with function body.
	if body.name == "player":
		attacking = true





func _on_chase_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
	if body.name == "player":
		pass





func _on_ranged_area_shape_entered(body: Node2D) -> void:
	pass # Replace with function body.
	if body.name == "player":
		pass






func _on_ranged_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
	if body.name == "player":
		pass
