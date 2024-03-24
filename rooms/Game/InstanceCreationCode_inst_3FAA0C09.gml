sprite_index = sprOil;
mask_index = sprOil;
image_index = 6
collidable =false;
dialog_array = 
[
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.george_douglas],
		"Its a gunholster"
	],
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"Its Theodore, great, case solved."
	],
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.george_douglas],
		"Theodore was never in the studio at any point though"
	],
	
]

on_interact = function()
{
	create_dialog(dialog_array);
	interacted = false;
}