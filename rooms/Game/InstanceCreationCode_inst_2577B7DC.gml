sprite_index = sprForeground_Assets;
mask_index = sprForeground_Assets;
image_index = 24;
collidable =true;
dialog_array = 
[
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.noone],
		"Here lies Ronan/April's Sanity, 'This game was tedious as hell to work on'"
	],
]

on_interact = function()
{
	create_dialog(dialog_array);
	interacted = false;
}