///@function calculate_jump_velocity(_jump_height, _gravity, _time, in_tiles, in_seconds)
///@param {real} jump_height		height you want to go up
///@param {real} gravity			gravity of your player
///@param {real} time				time to reach max height
///@param {bolean} in_tiles?		if your height is in pixels (undefined/false) or tiles (enter in your tile width)
///@param {bolean} in_seconds?		if your time is in frames (undefined/false) or seconds (true)


function calculate_jump_gravity(_jump_height,_time,in_tiles)
{
	if(in_tiles != undefined) && (in_tiles != false)
	{
		_jump_height = (_jump_height * in_tiles)
		
	}
	
	var _grav = (_jump_height*2)/(_time^2);
	return _grav;
}

function calculate_jump_velocity(_jump_height, _gravity, _time, in_tiles)
{
	if(in_tiles != undefined) && (in_tiles != false)
	{
		_jump_height = (_jump_height * in_tiles)
		
	}
	
	
	_time = _time * game_get_speed(gamespeed_fps);
		
	
	
	var _form_1 = (_jump_height + (((_gravity) * sqr(_time))/2)) / _time 
	
	return -_form_1;
}



function proof_of_vel(_velocity,_gravity,_time)
{
	return (_velocity * _time) + ((_gravity * sqr(_time))/2)
	
	
}

