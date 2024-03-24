event_func = function()
{
	
	create_dialog(
	[
		[
			dialog_mode.dialog,
			global.speaker_db[speaker.george_douglas],
			"We're cornered!! Fish Parasites"
		],
		[
			dialog_mode.dialog,
			global.speaker_db[speaker.edwin_wallace],
			"George, I don't know you all too well. But I'm not having you die in a mess I've caused."
		],
		[
			dialog_mode.dialog,
			global.speaker_db[speaker.edwin_wallace],
			"I'll distract them, take my gun and run!"
		],
		[
			dialog_mode.dialog,
			global.speaker_db[speaker.george_douglas],
			"Ed no!"
		],
		[
			dialog_mode.dialog,
			global.speaker_db[speaker.edwin_wallace],
			"Go NOW!",
			function(){game_end();}
		],
	]
	)
	
}