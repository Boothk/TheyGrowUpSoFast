seconds = -1;

function increment_seconds()
{
	// Timer management
	if(seconds >= 20) { exit; }
	
	seconds++;
	image_index = seconds;
	
	var _egg_mode = instance_exists(obj_egg_hatch);
	var _poop = instance_exists(obj_poop);
	
	// Stat tick
	if(!_egg_mode){
		obj_game_manager.pet_food--;
		obj_game_manager.pet_fitness--;
		obj_game_manager.pet_love--;
		if(_poop) { obj_game_manager.pet_poop++; }
	}
	
	// egg fix + hud limitation
	obj_game_manager.egg_hatch = bool((_egg_mode || seconds == 0) && seconds != 5);
	obj_game_manager.action_taken = false;
	
	// Determine urgent thought
	if(!instance_exists(obj_thought)){
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