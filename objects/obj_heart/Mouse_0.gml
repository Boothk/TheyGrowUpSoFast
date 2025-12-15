event_inherited();

if(block_click) { exit; };

if(instance_exists(lovin)) { exit; }

obj_game_manager.pet_love += 2;
lovin = instance_create_layer(16, 32, "Instances", obj_love);