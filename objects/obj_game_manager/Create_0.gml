pet_food = 5;
pet_poop = 0;
pet_fitness = 5;
pet_love = 0;
action_taken = true;
egg_hatch = false;

function reset_game(){
	pet_food = 10;
	pet_fitness = 5;
	pet_love = 5;
	pet_poop = 0;

	action_taken = true;
	egg_hatch = false;
	
	destroy_list = [obj_timer, obj_egg, obj_blob, obj_ooze, obj_jelly, obj_rip];
	array_foreach(destroy_list, function(e) {
		if(instance_exists(e)) { instance_destroy(e); }
	});
	
	instance_create_layer(64, 80, "Instances", obj_egg);
	instance_create_layer(64, 16, "Instances", obj_text);

}

reset_game();
