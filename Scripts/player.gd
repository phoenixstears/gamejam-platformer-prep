extends CharacterBody2D

@export var speed = 50
@export var jump_strength = 60

@export var walking_animation_speed = 2.5
@export var idle_animation_speed = 0.5

const GRAVITY = -98

var jumping = false
var can_jump = true
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
	# TODO: make jump feel good, add coyote time and make check for if already past max point when jumping
	if is_on_floor():
		can_jump = true
	
	if Input.is_action_pressed("right"):
		move_vec = speed*Vector2.RIGHT
		
	elif Input.is_action_pressed("left"):
		move_vec = speed*Vector2.LEFT
		
	if can_jump && Input.is_action_just_pressed("jump"):
		move_vec += jump_strength*Vector2.UP
		can_jump = false
	
	if !can_jump && Input.is_action_just_released("jump"):
		velocity.y = 0
	
	print("jumping: " + str(jumping))
	print("can_jump: " + str(can_jump))

	move_vec += GRAVITY*delta*Vector2.UP
	velocity += move_vec
	move_and_slide()
