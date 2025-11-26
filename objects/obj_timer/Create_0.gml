seconds = 0;

function increment_seconds()
{
	if(seconds >= 20) { exit; }
	seconds++;
	image_index = seconds;
	delay(function()
	{
		increment_seconds();
	},
	1);
}

increment_seconds();