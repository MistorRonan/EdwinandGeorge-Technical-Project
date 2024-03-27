sprite_index = sprorwell_dead;
dialog_array = 
[
	
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.george_douglas],
		"Alright, lets take a look here",
		function()
		{

			
			var _vid = instance_create_layer(0,0,"GUI",objVideoPlayer,
			{
				video_string : "Cutscenes/DS_STUDIO.mp4",
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