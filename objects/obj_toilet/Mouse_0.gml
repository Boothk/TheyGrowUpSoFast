event_inherited();

if(block_click) { exit; };

if(instance_exists(brush)) { exit; }

brush = instance_create_layer(16, 64, "Instances", obj_brush);

delay(function() {
	if(instance_exists(brush)) { instance_destroy(brush); }
	if(instance_exists(obj_poop)) { instance_destroy(obj_poop); }
}, 1);