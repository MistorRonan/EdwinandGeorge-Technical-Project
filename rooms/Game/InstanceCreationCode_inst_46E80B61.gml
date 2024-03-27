sprite_index = sprPersondead;

dialog_array = 
[
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"Hm, not much info we can get from the body. The only other thing we can see is the knife"
	],
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"Lets just sent it off to forensics. We'll report back to the police station.",
		function()
		{
			
			
			
			
			var _vid = instance_create_layer(0,0,"GUI",objVideoPlayer,
			{
				video_string : "Cutscenes/Opening.mp4",
				alpha : 1
			}
			);
			
			
			_vid.finish_func = function()
			{
				layer_enable_fx("FilmEffect",false)
				camera_set_view_pos(view,944,512)
				objPlayer.x = 967;
				objPlayer.y = 575;
			
				objGeorge.x = 967;
				objGeorge.y = 585;
				
				create_dialog(
				[
					[
						dialog_mode.dialog,
						global.speaker_db[speaker.jamie],
						"Welcome to Newborogh. I'm officer Jamie"
						
					],
					[
						dialog_mode.dialog,
						global.speaker_db[speaker.jamie],
						"Theres been a lot of crime around here lately, talk to me when you want to start a case."
						
					],
				]
				)
			}
			
			
			
		}
	],
]

on_interact = function()
{
	create_dialog(dialog_array);
	interacted = false;
}