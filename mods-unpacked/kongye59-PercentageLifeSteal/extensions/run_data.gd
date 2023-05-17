extends "res://singletons/run_data.gd"

var cur_weapon_lifesteal:float = 0.0

func add_weapon_dmg_dealt(pos:int, dmg_dealt:int)->void :
	if weapons.size() > pos:
		weapons[pos].dmg_dealt_last_wave += dmg_dealt
	emit_signal("lifesteal_effect", dmg_dealt * cur_weapon_lifesteal)


func manage_life_steal(weapon_stats:WeaponStats)->void :
	# if randf() < weapon_stats.lifesteal:
	#     emit_signal("lifesteal_effect", 1)
	cur_weapon_lifesteal = weapon_stats.lifesteal
