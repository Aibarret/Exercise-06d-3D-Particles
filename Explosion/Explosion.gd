extends Spatial


func _ready():
	$AnimatedSprite3D.play()
	$Particles.emitting = true


func _physics_process(_delta):
	if not $Particles.emitting:
		queue_free()

# The animation was never stopping so it was never despawning so I just decided to increase the particle effect time and remove the "not $AnimatedSprite3D.playing and not"
