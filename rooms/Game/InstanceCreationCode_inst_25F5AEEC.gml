sprite_index = sprOil;
mask_index = sprOil;
collidable =false;
dialog_array = 
[
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.george_douglas],
		"Hey, Ed. Careful here, its a little slipply. And I only drank one larger."
	],
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"Hm. "
	],
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"A little oil spill. Probably an accident"
	],
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.george_douglas],
		"Theres a bit on the banister though, thats hardly an accident."
	],
]

on_interact = function()
{
	create_dialog(dialog_array);
	interacted = false;
}