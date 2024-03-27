/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(global.view_width,global.view_height);
draw_sprite(moyai_background,0,0,0);

for(var _i = 0; _i < array_length(menu_section); _i ++)
{
	var _c = c_white;
	if(_i == selection) _c = c_aqua;
	
	draw_set_font(global.font)
	
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_text_color(global.view_width/2,global.view_height/4*(_i+1),menu_section[_i],_c,_c,_c,_c,1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
}