// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function delay(_func, _seconds, _params = []) 
{
	var _time_source = time_source_create(
	time_source_global,
	_seconds,
	time_source_units_seconds, 
	_func,
	_params,
	1,
	time_source_expire_after);
	
	time_source_start(_time_source);
}

