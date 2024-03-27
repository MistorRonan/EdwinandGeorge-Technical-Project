sprite_index = sprTrenchcoat;
mask_index = sprTrenchcoat;
image_index = 0
collidable =false;
dialog_array = 
[
	
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"A trenchcoat, it belongs to Archie."
	],
	
]

on_interact = function()
{
	create_dialog(dialog_array);
	interacted = false;
}