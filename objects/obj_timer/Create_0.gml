seconds = -1;

function increment_seconds()
{
	show_debug_message(obj_game_manager.pet_food);
	// Timer management
	if(seconds >= 20) { exit; }
	
	seconds++;
	image_index = seconds;
	
	var _egg_mode = instance_exists(obj_egg_hatch) || instance_exists(obj_egg) || instance_exists(obj_rip);
	var _poop = instance_exists(obj_poop);
	
	// Stat tick
	if(!_egg_mode){
		obj_game_manager.pet_food = clamp(obj_game_manager.pet_food - 1, 0, 10);
		obj_game_manager.pet_fitness = clamp(obj_game_manager.pet_fitness - 1, 0, 10);
		obj_game_manager.pet_love = clamp(obj_game_manager.pet_love - 1, 0, 10);
				
		if(_poop) { obj_game_manager.pet_poop = clamp(obj_game_manager.pet_poop++, 0, 10); }
	}
	
	// egg fix + hud limitation
	obj_game_manager.egg_hatch = bool((_egg_mode || seconds == 0) && seconds != 5);
	obj_game_manager.action_taken = false;
	
	// Determine urgent thought
	if(instance_exists(obj_thought)) { instance_destroy(obj_thought); }
	
	if(!_egg_mode){
		var _thought = undefined;
		if(obj_game_manager.pet_fitness < 3) { _thought = obj_weight; }
		if(obj_game_manager.pet_love < 3) { _thought = obj_love; }
		if(obj_game_manager.pet_food < 3) { _thought = obj_meat; }
		if(_poop) { _thought = obj_poop; }
	
		if (_thought != undefined) {
				instance_create_layer(96, 32, "Instances", obj_thought, { shown_icon: _thought });
		}
	}
		
	delay(function() { increment_seconds(); }, 1);
}

increment_seconds();