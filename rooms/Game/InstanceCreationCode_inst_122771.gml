dialog_array = 
[
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.jamie],
		"We've got some cases here for you. Take a look",
		function()
		{	
			instance_create_layer(0,0,"GUI",objCaseSelectionMenu)
			
		}

	],
]



on_interact = function()
{
	if(global.current_case == -1)
	{
		dialog_array = 
		[
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.jamie],
				"We've got some cases here for you. Take a look",
				function()
				{	
					instance_create_layer(0,0,"GUI",objCaseSelectionMenu)
			
				}

			],
		]
		
	}
	else
	{
		dialog_array = 
		[
			[
				dialog_mode.choice,
				global.speaker_db[speaker.jamie],
				"Ready to submit the case? I reccomend you look around before you make up your mind?",
				["No, I'm not ready", function(){instance_destroy()}],
				["Yes, I'm ready", function(){instance_create_layer(0,0,"GUI",objCaseSubmissionMenu);instance_destroy();}],
			],
		]
		
	}	

	create_dialog(dialog_array);
	interacted = false;
	
}