extends "res://singletons/run_data.gd"

const min_steal_life = 1
var cur_weapon_lifesteal:float = 0.0
var cur_life_steal:float = 0.0

func add_weapon_dmg_dealt(pos:int, dmg_dealt:int)->void :
	.add_weapon_dmg_dealt(pos,dmg_dealt)
	
	cur_life_steal += dmg_dealt * cur_weapon_lifesteal
	if cur_life_steal >= min_steal_life:
		emit_signal("lifesteal_effect", int(cur_life_steal))
		cur_life_steal -= int(cur_life_steal)


func manage_life_steal(weapon_stats:WeaponStats)->void :
	# if randf() < weapon_stats.lifesteal:
	#     emit_signal("lifesteal_effect", 1)
	cur_weapon_lifesteal = weapon_stats.lifesteal
