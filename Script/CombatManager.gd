extends Node

var combatArray: Array[IUnit] = []
var combatArray1: Array[IUnit] = []

var ele1 = "res://Scene/FireElemental.tscn"
var ele2 = "res://Scene/FireElemental.tscn"
var combat_timer = 0


func _ready():
	combatArray.push_front(ele1)
	combatArray1.push_front(ele2)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if combat_timer > 2:
		_combatRound()
	else:
		combat_timer += delta
		
	
func _combatRound():
	for IUnit in combatArray:
		match IUnit._get_targeting():
			1:
				IUnit._attack(_findLowestHealth(combatArray))
			2:
				IUnit._attack(_findHighestCost(combatArray))
	for IUnit in combatArray1:
		match IUnit._get_targeting():
			1:
				IUnit._attack(_findLowestHealth(combatArray1))
			2:
				IUnit._attack(_findHighestCost(combatArray1))
				
func _findLowestHealth(array: Array[IUnit]):
	var temp:IUnit
	temp.health=0
	for IUnit in array:
		if IUnit.health <= temp.health:
			temp = IUnit
	return temp

func _findHighestCost(array: Array[IUnit]):
	var temp:IUnit
	temp.cost=0
	for IUnit in array:
		if IUnit.cost <= temp.cost:
			temp = IUnit
	return temp
