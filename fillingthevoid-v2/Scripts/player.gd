extends CharacterBody2D
var speed = 150

func _physics_process(_delta):
	var direction = Input.get_vector("Left", "Right", "Up", "Down")
	velocity = direction * speed
	move_and_slide()
	
	if velocity.length() > 0.0:
		$AnimatedSprite2D.play("Walk")
	else:
		$AnimatedSprite2D.play("Idle")
		
	if Input.is_action_pressed("Right"):
		$AnimatedSprite2D.flip_h = true
	if Input.is_action_pressed("Left"):
		$AnimatedSprite2D.flip_h = false
