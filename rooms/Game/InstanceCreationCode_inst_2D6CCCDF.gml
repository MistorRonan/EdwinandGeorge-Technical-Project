sprite_index = sprPatricia_dead;
dialog_array = 
[
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.noone],
		"This is the body of Patrica."
		

	],
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"I think I'm seeing something..."
		

	],
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.george_douglas],
		"You alright there mate?",
		function()
		{

			
			var _vid = instance_create_layer(0,0,"GUI",objVideoPlayer,
			{
				video_string : "Cutscenes/DS_BAR.mp4",
				alpha : 1
			}
			);
			
			
			_vid.finish_func = function()
			{
				
				
			}
			
		}

	],
	
]

on_interact = function()
{
	create_dialog(dialog_array);
	interacted = false;
}