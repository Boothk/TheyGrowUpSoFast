if(instance_exists(obj_egg_hatch) || instance_exists(obj_egg) || instance_exists(obj_rip)) {
	block_click = true;
	exit;
}

if(!obj_game_manager.action_taken) {
	obj_game_manager.action_taken = true;
	block_click = false;
} else { 
	block_click = true;
}

