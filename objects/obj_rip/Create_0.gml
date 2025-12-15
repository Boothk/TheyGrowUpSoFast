obj_game_manager.action_taken = true;

inst_array = [obj_thought, obj_brush, obj_love, obj_meat, obj_poop, obj_weight];

array_foreach(inst_array, function(e) {
	if(instance_exists(e)) { instance_destroy(e); }
});
