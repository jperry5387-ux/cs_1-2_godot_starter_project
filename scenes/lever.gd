extends Area2D
@onready var activiation_range: CollisionShape2D = $Area2D/CollisionShape2D
@onready var animation_lever: AnimatedSprite2D = $AnimatedSprite2D
var coin_original = preload("res://scenes/coin.tscn")
var coin_created
var in_range = false
var player = null

func _ready() -> void:
	animation_lever.play("off")


func _process(_delta):
	if Input.is_action_just_pressed("lever_switch") and in_range:

		if name== "Lever":
			if !player.lever1:
				animation_lever.play("on")
				player.lever1 = true

			else:
				animation_lever.play("off")
				player.lever1 = false

		if name == "Lever2":
			if !player.lever2:
				animation_lever.play("on")
				player.lever2 = true

			else:
				animation_lever.play("off")
				player.lever2 = false

		if name == "Lever3":
			if !player.lever3:
				animation_lever.play("on")
				player.lever3 = true

			else:
				animation_lever.play("off")
				player.lever3 = false 


func _on_area_2d_body_entered(body: Node2D) -> void:
	 # Replace with function body.
	if body.name == "Player":
		in_range = true
		player = body


func _on_area_2d_body_exited(body: Node2D) -> void:
	 # Replace with function body.
	if body.name == "Player":
		in_range = false
		player = body
