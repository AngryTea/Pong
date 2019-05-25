extends KinematicBody2D

export var speed: int = 10
var direction = Vector2(0,0)
func start():
	direction = Vector2((randi() % 3 ) - 1, 0)
	
func _ready():
	start()
	
func _process(delta):
	var collision = move_and_collide(direction * speed)
	if collision:
		direction = direction.bounce(collision.normal)
		direction.y = randf() * 2 - 1
		direction = direction.normalized()
		if collision.collider.has_method("hit"):
			collision.collider.hit()