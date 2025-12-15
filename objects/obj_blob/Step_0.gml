if(obj_timer.seconds >= 10) {
	
	instance_change(obj_ooze, true);
	
} else {
	
	var _food = instance_place(104, 88, obj_meat);
	
	if(instance_exists(_food)){
		sprite_index = spr_blob_eat;
	}
	else {
		sprite_index = spr_blob;
	}
}