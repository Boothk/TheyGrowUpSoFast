draw_set_font(fnt_calibri);

draw_set_colour($FF000000 & $ffffff);draw_set_alpha(1);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

title_duration = 60;
title_text = "They Grow Up So Fast";
start_text = "Click egg to start";
shown_text = title_text;
show_egg_text = false;

alarm_set(0, title_duration);