event_func = function()
{
	instance_destroy();
	create_dialog(
	[
		[
				dialog_mode.dialog,
				global.speaker_db[speaker.edwin_wallace],
				"George?",
		],	
		[
				dialog_mode.dialog,
				global.speaker_db[speaker.george_douglas],
				"Edwin.",
		],	
		[
				dialog_mode.dialog,
				global.speaker_db[speaker.edwin_wallace],
				"This was a pretty rough stabbing, blood everywhere",
		],	
		[
				dialog_mode.dialog,
				global.speaker_db[speaker.george_douglas],
				"Yes, its pretty hard to miss that. Instead of going on about how a poet should've been sent, poke around a little.",
		],
	]
	
	
	)
	instance_destroy();
	
}