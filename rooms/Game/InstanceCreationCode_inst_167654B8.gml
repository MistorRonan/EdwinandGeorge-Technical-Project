event_func = function()
{
	
	create_dialog(
	[
		[
			dialog_mode.dialog,
			global.speaker_db[speaker.george_douglas],
			"The murderers were Fish Parasites"
		],
		[
			dialog_mode.dialog,
			global.speaker_db[speaker.george_douglas],
			"I knew something was up"
		],
		[
			dialog_mode.dialog,
			global.speaker_db[speaker.edwin_wallace],
			"welp, alls well that ends well.",
			function(){game_end();}
		],
	
	]
	)
	
}