# File IUNit
extends Node
class_name IUnit

var health = 0
var attack = 0
var cost = 0
var unit_name = ""

var lane_position: int = 0

func _move():
	lane_position +=1
	# Moves a unit 1 position along the map

func _unimplemeneted (method_name: String):
	push_error("Method '%s' is not implemented in class '%s'" % [method_name, get_class()])
	assert(false) # This will halt the execution in debug mode

func _calculate_position(mapLength: int):
	return lane_position/mapLength

func _attck(enermy: IUnit):
	_unimplemeneted("Attach")

func _death():
	_unimplemeneted("Death")
