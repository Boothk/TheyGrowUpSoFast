if(obj_timer.seconds >= 20) {
	instance_change(obj_rip, true);
} else {
	
	var _food = instance_place(104, 88, obj_meat);
	
	if(instance_exists(_food)){
		sprite_index = spr_jelly_eat;
	}
	else {
		sprite_index = spr_jelly;
	}
}