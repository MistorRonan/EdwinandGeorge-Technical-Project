sprite_index = sprOil;
mask_index = sprOil;
image_index = 4;
collidable =false;
dialog_array = 
[
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.noone],
		"Dear Diary: I've been having dreams of where my eyes fall out. But yet I can still see."
	],
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.noone],
		"Where my mind gets stolen but I still think, and my mouth shuts but I still speak."
	],
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.noone],
		"One day, he come and destory everything. From nothing, everything will suddenly become equally possible.\nI yearn for this day to come - Finn Painter"
	],
	
]

on_interact = function()
{
	create_dialog(dialog_array);
	interacted = false;
}