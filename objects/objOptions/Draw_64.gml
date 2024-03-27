/// @description Insert description here
// You can write your code in this editor

draw_set_font(global.font);

draw_sprite(moyai_background,0,0,0);

//draw left side

var left_start = global.view_width/4;
var y_start = 64;
var y_gap = 32; 

for(var _i = 0; _i < array_length(menu_options); _i++)
{
	draw_set_halign(fa_right);
	var _c = c_white
	if(selection == _i)
	{
		_c = c_aqua;
	}
	draw_text_color(left_start,y_start + (y_gap*_i),menu_options[_i][option_element.name],_c,_c,_c,_c,1)
	
	draw_set_halign(fa_left);
	
}

//draw line

draw_line(global.view_width/2,0,global.view_width/2,global.view_height);

//draw_right_side 
var right_start = global.view_width/4 * 3;

if(!submenu)
{
	if(menu_options[selection][option_element.type] == option_type.selecter)
	{
		var _f = function(_element, _index, _test = variable_global_get(menu_options[selection][option_element.variable]))
		{
			return _element == _test;
		
		}
		option_set = array_find_index(menu_options[selection][4],_f);
	}
}


if(menu_options[selection][option_element.type] == option_type.selecter)
{
	for(var _i = 0; _i < array_length(menu_options[selection][3]); _i++)
	{
	
		var _c = c_white
		if(submenu == true)
		{
			if(subselection == _i)
			{
				_c = c_navy;
			}
		}
		else
		{
			if(option_set == _i)
			{
				_c = c_green;
			}
		
		}
		draw_text_color(right_start,y_start + (y_gap*_i),menu_options[selection][3][_i],_c,_c,_c,_c,1)
	
	
	
	}
}
