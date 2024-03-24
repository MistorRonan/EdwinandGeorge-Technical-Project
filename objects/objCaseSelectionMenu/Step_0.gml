/// @description 
// You can write your code in this editor

input = input_check_pressed("down") - input_check_pressed("up");
enter = input_check_pressed("confirm");
back = input_check_pressed("cancel");


if(selection + input < 1)
{
	selection = array_length(global.case_mission)-1;
}
else if(selection + input > array_length(global.case_mission)-1)
{
	selection = 1;
}
else
{
	selection += input;
}

if(enter) && (!global.case_mission[selection].case_completed)
{
	audio_play_sound(Case_Accept,5,false);
	global.current_case = selection;
	
	switch(global.current_case)
	{
		case 1:
		create_dialog
		(
			[
				[
					dialog_mode.dialog,
					global.speaker_db[speaker.jamie],
					"Alright heres the brief"
				],
				[
					dialog_mode.dialog,
					global.speaker_db[speaker.jamie],
					"At 2pm, Patricia Waddington fell down the stairs of Paul's pub. We found three possible suspects, you can interview them in the left room."
				],
				[
					dialog_mode.dialog,
					global.speaker_db[speaker.jamie],
					"We have also gathered witnesses, who are in the room on the right."
				],
				[
					dialog_mode.dialog,
					global.speaker_db[speaker.jamie],
					"Go to the scene of the crime, Paul Pub. Its two houses next door."
				],
				[
					dialog_mode.dialog,
					global.speaker_db[speaker.george_douglas],
					"Do we have to? We can just submit whos the suspect right now if we want"
				],
				[
					dialog_mode.dialog,
					global.speaker_db[speaker.edwin_wallace],
					"Shut up"
				],
			]
			
		)
		
		
		break;
		case 2:
		create_dialog
		(
			[
				[
					dialog_mode.dialog,
					global.speaker_db[speaker.jamie],
					"Heres the brief"
				],
				[
					dialog_mode.dialog,
					global.speaker_db[speaker.jamie],
					"Liam Orwell, a local musisian, has been found dead in the studio nearby."
				],
				[
					dialog_mode.dialog,
					global.speaker_db[speaker.jamie],
					"Investigate the studio to southwest of here and talk to the suspects of the left and right rooms."
				],
				[
					dialog_mode.dialog,
					global.speaker_db[speaker.jamie],
					"Also, Investigate the suspect houses North of the studio."
				],
			]
			
		)
		
		
		break;
		case 3: 
		create_dialog
		(
			[
				[
					dialog_mode.dialog,
					global.speaker_db[speaker.jamie],
					"Heres the brief"
				],
				[
					dialog_mode.dialog,
					global.speaker_db[speaker.jamie],
					"DR Lucas Butcher was found dead in the graveyard."
				],
				[
					dialog_mode.dialog,
					global.speaker_db[speaker.jamie],
					"The graveyard is found in the church, just take the door on the right and you'll be in there"
				],
			]
			
		)
		
		
		break;
		case 4:
		create_dialog
		(
			[
				[
					dialog_mode.dialog,
					global.speaker_db[speaker.jamie],
					"Heres the brief"
				],
				[
					dialog_mode.dialog,
					global.speaker_db[speaker.jamie],
					"An official has been murdered in the office"
				],
				[
					dialog_mode.dialog,
					global.speaker_db[speaker.jamie],
					"Go to the office, and then talk to the witnesses and suspects."
				],
			]
		)
		
		
	}	
	instance_destroy()
}

