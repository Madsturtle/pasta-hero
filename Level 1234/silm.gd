extends Node2D

const speed = 60

var directuion = 1

@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:

	if ray_cast_right.is_colliding():
		directuion = -1
		animated_sprite_2d.flip_h = true
	if ray_cast_left.is_colliding():
		directuion = 1
		animated_sprite_2d.flip_h = false
		
	position.x += directuion * speed * delta