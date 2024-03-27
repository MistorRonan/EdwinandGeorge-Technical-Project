/// @description Insert description here
// You can write your code in this editor
if(global.current_case!=-1)
{
	//itialize case
	if(!case_initialised)
	{
		instance_deactivate_layer("Case1");
		for(var _i = 0; _i < array_length(global.case_mission[global.current_case].suspects); _i++)
		{
			var _inst = global.case_mission[global.current_case].suspects[_i];
			_inst.x = 903 + _i*48; //table location
			_inst.y = 216;
			_inst.state = NPC_State.suspect;
			_inst.suspect_dialog_array = global.case_mission[global.current_case].suspect_dialog[_i]
		}
		
		for(var _j = 0; _j < array_length(global.case_mission[global.current_case].witnesses); _j++)
		{
			var _inst = global.case_mission[global.current_case].witnesses[_j];
			_inst.x = 1520 + _j*32; //table location
			_inst.y = 231;
			_inst.state = NPC_State.witness;
			_inst.witness_dialog_array = global.case_mission[global.current_case].witness_dialog[_j]
		}
		
		
		case_initialised = true;
	}
	
	
	switch(global.current_case)
	{
		case 1:
		instance_activate_layer("Case1");
		break;
		case 2:
		instance_activate_layer("Case2");
		break;
		case 3:
		instance_activate_layer("Case3");
		break;
	}
	
	
}
if(global.current_case = -1)
{
	case_initialised = false;
	
}
if(cases_done == 4) && (!instance_exists(objVideoPlayer))
{
	instance_deactivate_layer("EndingLayer");
	instance_activate_layer("GoodEndingLayer");
instance_activate_layer("Instances_2")
	if(!audio_is_playing(SoftWind)) 
	{
		audio_play_sound(SoftWind,100,true);
	}
	tick ++;
	if(tick >= delay)
	{
		var _sfx = choose(WhisperSwoosh,Ps2_Ciaran,WaterLapping,Typewriter_Talking)
		audio_play_sound(_sfx,120,false)
		tick = 0;
		if(delay > 120) delay -= 20;
	}
}


