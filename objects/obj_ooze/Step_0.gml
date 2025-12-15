if(obj_timer.seconds >= 15) {
	instance_change(obj_jelly, true);
} else {
	
	var _food = instance_place(104, 88, obj_meat);
	
	if(instance_exists(_food)){
		sprite_index = spr_ooze_eat;
	}
	else {
		sprite_index = spr_ooze;
	}
}