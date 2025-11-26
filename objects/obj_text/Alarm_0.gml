if(show_egg_text == true)
{
	shown_text = start_text;
}

else
{
	shown_text = title_text;
}

show_egg_text = !show_egg_text;

alarm_set(0, title_duration);