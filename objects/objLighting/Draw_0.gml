/// @description Insert description here
// You can write your code in this editor
if(surface_exists(surface))
{
	var _cw = camera_get_view_width(view);
	var _ch = camera_get_view_height(view);
	var _cx = camera_get_view_x(view);
	var _cy = camera_get_view_y(view);
	
	surface_set_target(surface);
	draw_set_color(c_black);
	draw_set_alpha(alpha);
	
	
	draw_rectangle(0,0,_cw,_ch,false);
	
	gpu_set_blendmode(bm_subtract);
	
	with(objLamp)
	{
		gpu_set_blendmode(bm_subtract)
		draw_sprite_ext(sprLightingSphere,0,x + sprite_get_width(sprLamp)/2 - _cx,y+8 - _cy,0.5+random(0.05),0.5+random(0.05),0,#ffee83,1);
		gpu_set_blendmode(bm_normal)
		
		gpu_set_blendmode(bm_add);
		draw_sprite_ext(sprLightingSphere,0,x + sprite_get_width(sprLamp)/2 - _cx,y+8 - _cy,0.5+random(0.05),0.5+random(0.05),0,#ffee83,0.7);
	}
	gpu_set_blendmode(bm_subtract);
	with(PAR_NPC) 
	{
		if(sprite_index != sprForeground_Assets)
		{
			draw_sprite_ext(sprLightingSphere,0,x - _cx,y - _cy,0.3,0.3,0,#a3a7c2,1);
		}
	}
	with(objPlayer) 
	{
		draw_sprite_ext(sprLightingSphere,0,x - _cx,y - _cy,0.3,0.3,0,#a3a7c2,1);
	}
	with(objGeorge) 
	{
		draw_sprite_ext(sprLightingSphere,0,x - _cx,y - _cy,0.3,0.3,0,#a3a7c2,1);
	}
	with(objLightingSource)
	{
		gpu_set_blendmode(bm_subtract)
		draw_sprite_ext(sprLightingSphere,0,x - _cx,y - _cy,image_xscale*2+random(0.05),image_yscale*2+random(0.05),0,image_blend,0.7);
		gpu_set_blendmode(bm_normal)
		
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(sprLightingSphere,0,x - _cx,y - _cy,image_xscale+random(0.05),image_yscale+random(0.05),0,image_blend,0.5);
		
	}
	
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
	draw_surface(surface,_cx,_cy);
}
else
{
	var _cw = camera_get_view_width(view);
	var _ch = camera_get_view_height(view);
	var _cx = camera_get_view_x(view);
	var _cy = camera_get_view_y(view);
	
	surface = surface_create(_cw,_ch);
	surface_set_target(surface);
	draw_set_color(c_black);
	draw_set_alpha(0.7);
	draw_rectangle(0,0,_cw,_ch,false);
	surface_reset_target();
	
}




