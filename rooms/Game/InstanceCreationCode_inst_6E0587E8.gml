sprite_index = sprForeground_Assets;
mask_index = sprForeground_Assets;
image_index = 25;
dialog_array = 
[
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.noone],
		"Here lies Bobby Corbyn"
	],
]

on_interact = function()
{
	create_dialog(dialog_array);
	interacted = false;
}