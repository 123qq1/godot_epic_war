extends IUnit
@onready var animated_sprite = $AnimatedSprite2D

func _ready():
	health = 100
	attack = 10
	cost = 10
	unit_name = "FireElemental"

func _death():
	animated_sprite.play("Die")

func _attck(enermy:IUnit):
	enermy.health -= attack
	
