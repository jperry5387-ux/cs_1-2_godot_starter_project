extends Area2D

var direction
var speed = 300

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	pass
	
	
