#region physics variables and initalizing
//movement variables
hsp = 0; 
vsp = 0;
vsp_max = 8;
hsp_f = 0;
vsp_f = 0;
hsp_final = 0;
vsp_final = 0;
hsp_bonus = 0;




walkacc = 0.5;
walkspmax = 1.5;
hsp_fric_ground = 0.50; 
hsp_fric_air = 0.50;

//juice variables
coyote_counter = 0;
coyote_max = 4;

buffer_counter = 0;
buffer_max = 4;

part = false;
part_count = 0;

onwall = 0;
onground = false;
jumped = false;

last_dir = 0;
freeze_input = false;

//the first number is tiles you want to jump


#endregion

#region sprites array for the animation engine
sprites_array[PlaySPR.idle] = sprEdwin_idle;
sprites_array[PlaySPR.jump] = sprPlayerJump;
sprites_array[PlaySPR.fall] = sprPlayerFall;
sprites_array[PlaySPR.walk_horizontal] = spredwin_walking_animationside;
sprites_array[PlaySPR.walk_down] = sprEdwin_Walking_Front;
sprites_array[PlaySPR.walk_up] = sprEdwin_walking_animationbehind;
sprites_array[PlaySPR.wall_slide] = sprPlayerWallSlide;
#endregion

#region combat

//attacks





#endregion

//states

idlestate = function()
{
	//controls
	#region
	
		if(key_left) && (!freeze_input)
		{
			hsp = Approach(hsp, -walkspmax, walkacc);
		}
		else if(key_right) && (!freeze_input)
		{
			hsp = Approach(hsp, walkspmax, walkacc);
		}
		else
		{
			hsp = Approach(hsp,0,hsp_fric_ground);
		}
		hsp = clamp(hsp, -walkspmax, walkspmax);
		
		if(key_up) && (!freeze_input)
		{
			vsp = Approach(vsp, -walkspmax, walkacc);
		}
		else if(key_down) && (!freeze_input)
		{
			vsp = Approach(vsp, walkspmax, walkacc);
		}
		else
		{
			vsp = Approach(vsp,0,hsp_fric_ground);
		}
		vsp = clamp(vsp, -walkspmax, walkspmax)
	
	
	//attacks
	
	
	if(hsp != 0) or (vsp != 0)
	{
		if(tile_meeting(x,y,"PubTileset")) or (tile_meeting(x,y,"Studio"))
		{
			if(image_index == 2) or (image_index == 5)
			{
				var _sound = choose(FootstepWood1,FootstepWood2,FootstepWood3)
				
				audio_play_sound(_sound,0,false)
			}
		}
		if(tile_meeting(x,y,"BG")) 
		{
			if(image_index == 2) or (image_index == 5)
			{
				var _sound = choose(FootstepConcrete1,FootstepConcrete2,FootstepConcrete3)
				
				audio_play_sound(_sound,0,false)
			}
		}
		if(tile_meeting(x,y,"Church")) 
		{
			if(image_index == 2) or (image_index == 5)
			{
				var _sound = choose(FootstepChurch1,FootstepChurch2,FootstepChurch3)
				
				audio_play_sound(_sound,0,false)
			}
		}
	}
	
	
	
	
	#endregion
	
	//npc interaction
	if(distance_to_object(PAR_NPC) < 17)
	{
		var _y_extra = 0; 
		var _x_extra = 0;
		if(last_dir = 0)
		{
			_y_extra = 16;
		}
		else if(last_dir = 1)
		{
			_y_extra = -16;
		}
		else if(last_dir == 2)
		{
			_x_extra = 16 * image_xscale;
		}
		
		
		var _inst = instance_nearest(x+_x_extra,y+_y_extra,PAR_NPC);
		_inst.interactable = true;
		if(key_space)
		{
			_inst.interacted = true;
		}
	}
	

	
	
	
	
}

attack_state = function()
{
	if(Animation_End(sprite_index,image_index,image_speed))
	{
		state = idlestate;
	}
	
}

tile_collisions = function()
{
	//calculate gravity
	var grv_final = grv; 
	var vsp_max_final = vsp_max;
	if(onwall != 0) && (vsp > 0) && (state = idlestate)
	{
		grv_final = grv_wall;
		vsp_max_final = vsp_max_wall;
	}
	vsp += grv_final;
	vsp = clamp(vsp,-vsp_max_final,vsp_max_final)
	
		
	//frac calculation
	#region
	hsp_final = hsp + hsp_f + hsp_bonus;
	hsp_f = hsp_final - floor(abs(hsp_final))*sign(hsp_final);
	hsp_final -= hsp_f;
 
	vsp_final = vsp + vsp_f;
	vsp_f = vsp_final - floor(abs(vsp_final))*sign(vsp_final);
	vsp_final -= vsp_f;
	#endregion

	
	if(tile_meeting(x+hsp_final+hsp_bonus,y,"collision"))
	{
		var inc = sign(hsp_final);
	
		while(!tile_meeting(x+inc,y,"collision"))
		{
			x += inc;
		}
		hsp_final = 0;
		hsp = 0;
	}
	x+=hsp_final;
	
	if(tile_meeting(x,y+vsp_final,"collision"))
	{
		var inc = sign(vsp_final);
	
		while(!tile_meeting(x,y+inc,"collision"))
		{
			y += inc
		}
		vsp_final = 0;
		vsp = 0;
		onground = true;
	}
	y += vsp_final;

}

object_collisions = function()
{
		
		
	//frac calculation
	#region
	/*
	hsp_final = hsp + hsp_f + hsp_bonus;
	hsp_f = hsp_final - floor(abs(hsp_final))*sign(hsp_final);
	hsp_final -= hsp_f;
 
	vsp_final = vsp + vsp_f;
	vsp_f = vsp_final - floor(abs(vsp_final))*sign(vsp_final);
	vsp_final -= vsp_f;
	*/
	#endregion

	if(place_meeting(x+hsp+hsp_bonus,y,objWall))
	{
		if(instance_place(x+hsp,y,objWall).collidable)
		{
		
			var inc = sign(hsp);
	
			while(!place_meeting(x+inc,y,objWall))
			{
				x += inc;
			}
	
			hsp_final = 0;
			hsp = 0;
		}
	}

	x+=hsp
	
	if(place_meeting(x,y+vsp,objWall)) 
	{
		if(instance_place(x,y+vsp,objWall).collidable)
		{
			
		
			var inc = sign(vsp);
	
			while(!place_meeting(x,y+inc,objWall))
			{
				y += inc;
			}
			vsp_final = 0;
			vsp = 0;
			part = false;
		}
	}
	y += vsp;
}

state = idlestate

collisions = object_collisions;