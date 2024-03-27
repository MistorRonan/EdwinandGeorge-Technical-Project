/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(alpha)
_y_gap = 90;
 _x_start = 128;
cx = camera_get_view_x(view);
cy = camera_get_view_y(view);

draw_sprite_stretched(sprText_box,0,_x_start+cx,_y_gap+cy,(global.view_width-_x_start*2),(global.view_height-_y_gap*2));

for(var _i = 0; _i < array_length(global.case_mission[global.current_case].suspects); _i++)
{
	//draw to the left side
	_x_buffer = 32;
	_y_start = 68;
	
	//var y_gap = (((global.view_height-_buffer*2)/(array_length(global.case_mission[global.current_case])+1)) * (_i-1));
	
	_x_gap = ((global.view_width-_x_start*2) + _x_buffer)/(array_length(global.case_mission[global.current_case].suspects)) * (_i);
	
	draw_set_halign(fa_middle)
	if(!submitted)
	{
		draw_text((global.view_width/2) + cx,_y_gap+(sprite_get_height(Thomas_Potrait)*2)+48+cy,"Submit " + global.case_mission[global.current_case].suspect_names[selection] + " as a convict?")
	}
	draw_set_halign(fa_left)
	if(_i == selection)
	{
		if(enter)
		{
			
			
		}
		
		draw_sprite(sprPointer,0,_x_start+_x_buffer+_x_gap+(sprite_get_width(Thomas_Potrait)/2)-5+cx,_y_gap+cy);
	}
	
	draw_sprite_ext(global.case_mission[global.current_case].suspect_portaits[_i],0,_x_start+_x_buffer+_x_gap-(sprite_get_width(Thomas_Potrait)/2)-5 +cx,_y_gap+sprite_get_height(Thomas_Potrait)+cy,2,2,0,c_white,alpha);
	
}
draw_set_alpha(1)



