event_inherited();

if(block_click) { 
	if(!instance_exists(obj_egg_hatch)) {
		exit; 
	}
};

if(instance_exists(lovin)) { exit; }

obj_game_manager.pet_love += 10;
lovin = instance_create_layer(16, 32, "Instances", obj_love);