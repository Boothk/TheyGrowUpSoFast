seconds = -1;

function increment_seconds()
{
	if(seconds >= 20) { exit; }
	
	seconds++;
	image_index = seconds;
		
	obj_game_manager.egg_hatch = bool((instance_exists(obj_egg_hatch) || seconds == 0) && seconds != 5);
	obj_game_manager.action_taken = false;
	show_debug_message(seconds);
	
	delay(function()
	{
		increment_seconds();
	},
	1);
}

increment_seconds();