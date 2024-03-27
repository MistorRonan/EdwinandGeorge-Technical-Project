sprite_index = sprConnor_dead;
mask_index = sprConnor_dead;
dialog_array = 
[
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"I'm seeing something again..."
		

	],
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.george_douglas],
		"Alrighty, tell me if theres anything cool you see.",
		function()
		{

			
			var _vid = instance_create_layer(0,0,"GUI",objVideoPlayer,
			{
				video_string : "Cutscenes/DS_GY.mp4",
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