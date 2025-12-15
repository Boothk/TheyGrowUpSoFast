event_inherited();

if(block_click) { exit; };

if(instance_exists(lunch)) { exit; }

obj_game_manager.pet_food += 10;
lunch = instance_create_layer(96, 80, "Instances", obj_meat);

delay(function() {
	if( !instance_exists(obj_poop) && !instance_exists(obj_rip) && 
		!instance_exists(obj_egg) && !instance_exists(obj_egg_hatch) ) { 
			instance_create_layer(16, 80, "Instances", obj_poop); 
	}
}, 3);