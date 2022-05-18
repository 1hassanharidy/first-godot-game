extends RigidBody2D

func _ready():
	var animation_types = $AnimatedSprite.frames.get_animation_names()
	$AnimatedSprite.animation = animation_types[randi() % animation_types.size()]

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
