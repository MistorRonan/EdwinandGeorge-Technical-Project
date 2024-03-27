sprite_index = sprForeground_Assets;
mask_index = sprForeground_Assets;
image_index = 24;
dialog_array = 
[
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.noone],
		"Here lies Richard. Died doing who he loves"
	],
]

on_interact = function()
{
	create_dialog(dialog_array);
	interacted = false;
}