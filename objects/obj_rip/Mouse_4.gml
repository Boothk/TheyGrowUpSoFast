var _inst_array = [obj_thought, obj_brush, obj_love, obj_meat, obj_poop, obj_weight, obj_stat_love, obj_stat_hygn, obj_stat_hngr, obj_stat_stng];

array_foreach(_inst_array, function(e) {
	if(instance_exists(e)) { instance_destroy(e); }
});
obj_game_manager.reset_game();