//inputs
key_left = input_check("left");
key_right = input_check("right");
key_down = input_check("down");
key_up = input_check("up");
key_space = input_check_pressed("jump");

key_paused = input_check_pressed("pause");

key_attack_1 = input_check_pressed("attack");

hsp_bonus = Approach(hsp_bonus, 0, 0.2)

depth = -bbox_bottom;

collisions();
//Run state machine
if(!instance_exists(objTextBox)) && (!instance_exists(objCaseSelectionMenu)) && (!instance_exists(objCaseSubmissionMenu)) && (!instance_exists(objVideoPlayer)) 
{
	state();
}
else
{	
	hsp = 0;
	vsp =0;
}

//collisions

#region






if(!tile_meeting(x,y+1,"collision")) && (!place_meeting(x,y+1,objWall)) onground = false;
#endregion

//pause menu
if(key_paused)
{
	instance_create_layer(0,0,"GUI",objPauseMenu);
	
}

//animation engine

switch(state)
{
	case idlestate:
	#region
	
	if(hsp != 0) image_xscale = sign(hsp);
	
	if(hsp!=0)
	{
		last_dir = 2;
		sprite_index = sprites_array[PlaySPR.walk_horizontal];
	}
	
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
	
	if(hsp == 0 && vsp == 0)
	{
		sprite_index = sprites_array[PlaySPR.idle];
		image_index = last_dir;
	}
	
	#endregion
	
	
	break;
	
	
}

