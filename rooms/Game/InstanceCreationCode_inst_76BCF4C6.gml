sprite_index = sprOil;
mask_index = sprOil;
image_index = 5;
collidable =false;
dialog_array = 
[
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"A portrait of Louis Armstrong in Archies house"
	],
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.george_douglas],
		"yes"
	],
	
]

on_interact = function()
{
	create_dialog(dialog_array);
	interacted = false;
}