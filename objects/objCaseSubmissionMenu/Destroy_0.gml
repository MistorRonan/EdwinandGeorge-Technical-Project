/// @description Insert description here
// You can write your code in this editor



global.current_case = -1;

instance_deactivate_layer("Case1");
instance_deactivate_layer("Case2");	

for(var _i = 0; _i < array_length(global.NPC_db); _i++)
{
	with(global.NPC_db[_i])
	{
		if(!convicted)
		{
			
			state = NPC_State.default_location;
			
		}
		
	}
}
if(objCase_Manager.cases_done == 2)
{
	create_dialog(
	[
		[
			dialog_mode.dialog,
			global.speaker_db[speaker.george_douglas],
			"Bud, can I talk to you for a sec?"
		],
		[
			dialog_mode.dialog,
			global.speaker_db[speaker.edwin_wallace],
			"What is it?"
		],
		[
			dialog_mode.dialog,
			global.speaker_db[speaker.george_douglas],
			"I feel like these cases are connected some how, am I the only one thinking this?"
		],
		[
			dialog_mode.dialog,
			global.speaker_db[speaker.george_douglas],
			"Theres no way that these seemingly petty and grudge based crimes happening simultainously is a coincidence"
		],
		[
			dialog_mode.dialog,
			global.speaker_db[speaker.edwin_wallace],
			"You do have a point. Thinking about it, this place makes me a little uneasy."
		],
	]
	
	)
}

if(objCase_Manager.cases_done == 4)
{
	create_dialog(
	[
		[
			dialog_mode.dialog,
			global.speaker_db[speaker.jamie],
			"Forsenics came back."
		],
		[
			dialog_mode.dialog,
			global.speaker_db[speaker.jamie],
			"Look at the shack..."
		],
		[
			dialog_mode.dialog,
			global.speaker_db[speaker.jamie],
			"Go to there now, run to the shack at the top"
		],
		[
			dialog_mode.dialog,
			global.speaker_db[speaker.jamie],
			"He is nigh"
		],
	]
	
	)
	
	
}


