extends CharacterBody2D

@export var speed = 50
@export var jump_strength = 60

@export var walking_animation_speed = 2.5
@export var idle_animation_speed = 0.5

const GRAVITY = -98
@onready var _animated_sprite = $AnimatedSprite2D

func _process(_delta):
	if Input.is_action_pressed("right"):
		_animated_sprite.flip_h = false
		_animated_sprite.play("walking")
		_animated_sprite.speed_scale = walking_animation_speed

	elif Input.is_action_pressed("left"):
		_animated_sprite.flip_h = true
		_animated_sprite.play("walking")
		_animated_sprite.speed_scale = walking_animation_speed
	
	else:
		_animated_sprite.play("idle")
		_animated_sprite.speed_scale = idle_animation_speed

		
func _physics_process(delta: float) -> void:
	var move_vec = Vector2.ZERO
	velocity.x = 0

	if Input.is_action_pressed("right"):
		move_vec = speed*Vector2.RIGHT
		
	elif Input.is_action_pressed("left"):
		move_vec = speed*Vector2.LEFT
		
	if is_on_floor() && Input.is_action_just_pressed("jump"):
		move_vec += jump_strength*Vector2.UP
	

	move_vec += GRAVITY*delta*Vector2.UP
	velocity += move_vec
	move_and_slide()
