sprite_index = sprOil;
mask_index = sprOil;
image_index = 2
collidable =false;
dialog_array = 
[
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.george_douglas],
		"Its a note."
	],
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"Hm, it says. Freedom isn't free, leave us be"
	],
	
]

on_interact = function()
{
	create_dialog(dialog_array);
	interacted = false;
}