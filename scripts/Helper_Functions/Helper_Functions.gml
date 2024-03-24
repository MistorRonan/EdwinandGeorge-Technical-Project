/*
Moves one value toward another within a given amount

*/
function Approach(variable, target, amount)
{
	
	if (variable < target)
	{
		variable += amount;
		if (variable > target) return target;
	}
	else
	{
		variable -= amount;
		if (variable < target) return target;
	}
	return variable;
	
}

function Concat() 
{
    var _string = "";
    for(var i = 0; i < argument_count; i++) _string += string(argument[i]);
    return _string;
}

/*
checks if a number is within a range of two numbers
for eg. if you have 28 at the lower end and 45 at the higher end
it will return true for 31 but not for 13
*/
function NumberRange(variable, lower, higher)
{
	
	if (variable >= lower) && (variable <= higher) 
	{
    		return true;
	} 
}

/*
Sinewaves a variable between two points over a given time
*/
function Wave(from, to, duration, offset)
{
	var a4 = (to - from) * 0.5
	return from + a4 + sin((((current_time * 0.001) + duration * offset) / duration) * (pi*2)) * a4;
}

/*
Wraps a value beteen a minimum and a given wrap point
*/
function Wrap(_value, minimum, wrapat)
{
	var _mod = (_value - minimum) mod (wrapat - minimum);
	if (_mod < 0 ) return _mod + wrapat else return _mod + minimum
}

function Animation_End(_sprite_index,_image_index,_image_speed)
{
	/// @description animation_end(sprite_index,image_index, rate)
	/// @param {real} <sprite_index> The index of the sprite being animated
	/// @param {real} <image_index> The current frame value
	/// @param {real} <rate> -See Below-
	///     The rate of change in frames per step if not
	///     using built in image_index/image_speed.  
	///     Don't use if you don't think you need this.  You probably don't.
 
	//returns true if the animation will loop this step.
 
	//Script courtesy of PixellatedPope & Minty Python from the GameMaker subreddit discord 
	//https://www.reddit.com/r/gamemaker/wiki/discord
 
	
	var _type=sprite_get_speed_type(_sprite_index);
	var _spd=sprite_get_speed(_sprite_index)*_image_speed;
	if(_type == spritespeed_framespersecond)
	{
	    _spd = _spd/room_speed;
	}
	//if(argument_count > 2) _spd=argument[2];
	return _image_index+_spd >= sprite_get_number(_sprite_index);
	
}

