/// @description 
// You can write your code in this editor

draw_text(0,0,selection);

var _buffer = 64

draw_sprite_stretched(sprText_box,0,_buffer,_buffer,global.view_width - _buffer*2,global.view_height - _buffer*2);

for(var _i = 1; _i < array_length(global.case_mission); _i++)
{
	//draw to the left side
	var _x_start = 68;
	var _y_start = 68;
	
	var y_gap = (((global.view_height-_buffer*2)/(array_length(global.case_mission)+1)) * (_i-1));
	
	var _str = "";
	if(_i == selection)
	{
		_str = "> "
	}
	
	
	
	draw_text(_x_start,_y_start + y_gap,_str + $"Case {_i}" );
	if(global.case_mission[_i].case_completed)
	{
		draw_line_width(_x_start,_y_start+y_gap + font_get_size(global.font),_x_start + string_length($"Case {_i}")*18,_y_start+y_gap + (font_get_size(global.font)/2),4)
	}
	
}

