event_inherited();

if(block_click) { exit; };

if(instance_exists(workout)) { exit; }

obj_game_manager.pet_fitness += 10;
workout = instance_create_layer(96, 64, "Instances", obj_weight);