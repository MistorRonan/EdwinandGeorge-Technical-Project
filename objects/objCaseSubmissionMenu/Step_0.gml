/// @description Insert description here
// You can write your code in this editor

if(!submitted)
{
input = input_check_pressed("right") - input_check_pressed("left");
enter = input_check_pressed("confirm");
back = input_check_pressed("cancel");
}

if(selection + input < 0)
{
	selection = array_length(global.case_mission[global.current_case].suspects)-1;
}
else if(selection + input > array_length(global.case_mission[global.current_case].suspects)-1)
{
	selection = 0;
}
else
{
	selection += input;
}
if(enter)
{
	submitted = true;
	_x_selected = ((global.view_width-_x_start*2) + _x_buffer)/(array_length(global.case_mission[global.current_case].suspects)) * (selection);
	my_seq = layer_sequence_create("Covicted",_x_start+_x_buffer+_x_selected+(sprite_get_width(Thomas_Potrait)/2)+cx,_y_gap+sprite_get_height(Thomas_Potrait)+cy,seq_convicted);
	
	audio_play_sound(Menu_Button,10,false,25);
	
	
	global.case_mission[global.current_case].case_completed = true;
	global.case_mission[global.current_case].suspects[selection].convicted = true;
	global.case_mission[global.current_case].suspects[selection].convicted_order = objCase_Manager.cases_done;
	if(selection == global.case_mission[global.current_case].murderer)
	{
		objCase_Manager.cases_correct += 1;
	}
	
	
	objCase_Manager.cases_done += 1;
	enter = false;
}
if(my_seq != 0)
{
	if(layer_sequence_is_finished(my_seq))
	{
		
		
		
		
	}
}

if(submitted)
{
	tick++
	if(tick > 4 * game_get_speed(gamespeed_fps))
	{
		
		alpha -= 0.005;
	}
	
	if(!audio_is_playing(Menu_Button))
	{
		instance_destroy();
		
		layer_sequence_destroy(my_seq);
	}
}

