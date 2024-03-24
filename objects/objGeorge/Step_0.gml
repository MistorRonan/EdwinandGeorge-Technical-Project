/// @description Insert description here
// You can write your code in this editor

depth = -bbox_bottom;

if(!following)
{
	if(distance_to_object(objPlayer) > 12)
	{
		if(objPlayer.hsp != 0) or (objPlayer.vsp != 0)
		{
			following = true;
		}
	}
	hsp = 0;
	vsp = 0;
	
}
else
{
	var _dir = point_direction(x,y,objPlayer.x,objPlayer.y);
	
	hsp = dcos(_dir) * walksp;
	vsp = -dsin(_dir) * walksp;
	
	if(distance_to_object(objPlayer) <= 8)
	{
		following = false;
	}
}



if(hsp != 0) image_xscale = sign(hsp);

if(abs(hsp) > abs(vsp))
{
	if(hsp!=0)
	{
		last_dir = 2;
		sprite_index = sprites_array[PlaySPR.walk_horizontal];
	}
}	
else if (abs(vsp) > abs(hsp))
{
	if(vsp != 0)
	{
			if(vsp > 0)
			{
				last_dir = 0
				sprite_index = sprites_array[PlaySPR.walk_down];
			}
			else if (vsp < 0)
			{
				last_dir = 1
				sprite_index = sprites_array[PlaySPR.walk_up];
			}
	}
}	
if(hsp == 0 && vsp == 0)
{
	sprite_index = sprites_array[PlaySPR.idle];
	image_index = last_dir;
}
	
x=x+hsp;
y=y+vsp;

