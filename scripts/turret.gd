extends CharacterBody2D
var projectile_original = preload("res://scenes/enemy_projectile.tscn")
var facing
var start_time=2
var time = start_time
var in_range = false
var player
  
func _ready():
	
	pass

func _process(delta: float) -> void:
	if in_range == true:
		time -= delta
		if time < 0:
			shoot(player)
			time = start_time
	pass

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		player = body
		in_range = true
 
 
	

pass
func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		
		in_range = false
func shoot(target):
	
	var projectile_clone = projectile_original.instantiate()
	
	# TODO: Set projectile position to player position
	projectile_clone.global_position = position
	
	
	# TODO: Set projectile direction using facing variable
	projectile_clone.set_direction(target.position)
	
	# TODO: Add projectile to the game world
	get_tree().get_root().add_child(projectile_clone)

pass
