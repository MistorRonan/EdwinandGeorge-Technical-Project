sprite_index = sprOil;
mask_index = sprOil;
image_index = 3;
collidable =false;
dialog_array = 
[
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"A knife, in Finn's House..."
	],
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.george_douglas],
		"Its glowing a little bit, and it has wierd writing on it. Surely thats incriminating?"
	],
	
]

on_interact = function()
{
	create_dialog(dialog_array);
	interacted = false;
}