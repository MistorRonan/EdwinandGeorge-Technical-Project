/// @description Insert description here
// You can write your code in this editor
if(audio_group_is_loaded(audio_group_Music))
{
	if(!audio_is_playing(_559850__migfus20__jazz_background_music_loop))
	{
		audio_play_sound(_559850__migfus20__jazz_background_music_loop,0,true)
	}
}


if(input_check_pressed("action"))
{
	audio_stop_sound(_559850__migfus20__jazz_background_music_loop);
	audio_play_sound(Play_Resume_Button,5,false);
	instance_destroy();
	layer_background_blend(bg_lay_id,#3d2936)
	create_dialog
	(
	[
		[
				dialog_mode.dialog,
				global.speaker_db[speaker.noone],
				"This game is played with the arrow keys, space bar to interact, and escape to pause. Press space in a dialogue box to move to the next one, and press enter to skip a cutscene. SOMETIMES you may need to if it gets stuck",
				

		],	
		[
				dialog_mode.dialog,
				global.speaker_db[speaker.noone],
				"Edwin Wallace, a detective from upstate New York has been sent off to England to investigate a small town with an increasing number of crimes",
				

		],	
		[
				dialog_mode.dialog,
				global.speaker_db[speaker.noone],
				"Paired with a rookie named George Douglas, they'll soon find out what the quaint town of Newborough has in store for them.",
				function(){instance_destroy();audio_stop_sound(Typewriter_Talking);room_goto(Game);}

		],	
	]
	)
}





