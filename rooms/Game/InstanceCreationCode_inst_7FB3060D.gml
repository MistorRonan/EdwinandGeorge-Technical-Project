sprite_index = sprOil;
image_index = 1;
mask_index = sprOil;
collidable =false;
dialog_array = 
[
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"An empty oil bottle.."
	],
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"I think Grover said something about this "
	],
	
]

on_interact = function()
{
	create_dialog(dialog_array);
	interacted = false;
}