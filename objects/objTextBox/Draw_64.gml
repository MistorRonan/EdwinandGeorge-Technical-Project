/// @description Insert description here
// You can write your code in this editor
if(dialog[0][dialog_element.mode] == dialog_mode.inspection)
{
	draw_sprite_ext(dialog[0][dialog_element.image],0,0,0,1,1,0,c_white,alpha_fade);
	
	
	
	
}
var _y_extra = 0;
if(dialog[page][dialog_element.mode] == dialog_mode.choice)
{
	_y_extra = 64;
}


var _y_start = (global.view_height/3 * 2) - _y_extra
var _xx_margin = x_margin

draw_sprite_stretched(sprText_box,0,0,_y_start,global.view_width,global.view_height/3 + _y_extra)

if(dialog[page][dialog_element.speaker].portait != undefined)
{
	var _scale = 2
	draw_sprite_ext(sprPorttraitShadow,0,x_margin,_y_start+y_margin,_scale,_scale,0,c_white,1)
	draw_sprite_ext(dialog[page][dialog_element.speaker].portait.neutral,0,x_margin,_y_start+y_margin,_scale,_scale,0,c_white,1);
	_xx_margin += sprite_get_width(sprPlaceholderPortrait)*_scale + x_margin;
	
	
}
draw_set_color(#291d2b)
draw_set_font(global.font)
display_set_gui_size(global.view_width,global.view_height);
//get speaker info
var _name_string = dialog[page][dialog_element.speaker].name;
if(dialog[page][dialog_element.speaker] != global.speaker_db[speaker.noone])
{
	_name_string += ": "; 
}


var _font_buffer = font_get_size(global.font)
draw_text_ext(_xx_margin,_y_start + _font_buffer/4,_name_string + current_string,_font_buffer+4,global.view_width - _xx_margin * 1.5)

if(dialog[page][dialog_element.mode] == dialog_mode.choice)
{
	var _string_height = string_height_ext(_name_string + current_string,_font_buffer+4,global.view_width - _xx_margin * 1.5);
	
	for(var _i = 0; _i < array_length(dialog[page][dialog_element.choices]); _i++)
	{
		var _txt = (selection == _i) ? "> " : "";
		
		draw_text(_xx_margin,_y_start + _string_height + ((_font_buffer+4)*_i),_txt + dialog[page][dialog_element.choices + _i][0]);
		
	}
	
};
