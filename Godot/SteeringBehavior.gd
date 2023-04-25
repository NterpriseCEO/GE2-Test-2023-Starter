class_name SteeringBehavior extends Node

export var weight = 1.0
export var draw_gizmos = true

var boid

var player

export var enabled = true setget set_enabled, is_enabled

func _ready():
	player = get_node('../../../Player')
	player.connect("user_steering_disabled", self, "_on_player_control_disabled")

func set_enabled(var e):
	enabled = e 
	set_process(enabled)

func is_enabled():
	return enabled
	
func draw_gizmos():
	pass
	
func _on_player_control_disabled():
	self.enabled = false
	
func _process(delta):	
	if draw_gizmos and enabled:
		draw_gizmos()
