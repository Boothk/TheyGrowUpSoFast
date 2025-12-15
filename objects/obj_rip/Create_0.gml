obj_game_manager.action_taken = true;

var _inst_array = [obj_thought, obj_brush, obj_love, obj_meat, obj_poop, obj_weight];

array_foreach(_inst_array, function(e) {
	if(instance_exists(e)) { instance_destroy(e); }
});

instance_create_layer(0,32, "Instances", obj_stat_love);
instance_create_layer(0,64, "Instances", obj_stat_hygn);
instance_create_layer(96,32, "Instances", obj_stat_hngr);
instance_create_layer(96,64, "Instances", obj_stat_stng);