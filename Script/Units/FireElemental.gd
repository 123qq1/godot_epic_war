extends IUnit
@onready var animated_sprite = $AnimatedSprite2D

func _ready():
	health = 100
	attack = 10
	cost = 10
	unit_name = "FireElemental"
	targeting = 1

func _death():
	animated_sprite.play("Die")

func _attack(enermy:IUnit):
	animated_sprite.play("Attack")
	enermy.health -= attack

func _get_targeting():
	return targeting
	
