extends Sprite2D

var backwardorforward = 0
var minimumScale = Vector2(-1,-1)
var maximumScale = Vector2(1, 1)

func _process(delta):
	if backwardorforward == 0 :scale -= Vector2(0.001, 0.002) * delta
	elif backwardorforward == 1 :scale += Vector2(0.001, 0.002) * delta
	if scale <= minimumScale : backwardorforward = 1
	elif scale >= maximumScale : backwardorforward = 0
	rotation += 0.003 * delta
