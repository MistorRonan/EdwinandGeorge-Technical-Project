/// @description Insert description here
// You can write your code in this editor
collidable =true;
state = NPC_State.default_location
convicted = false;
interacted = false;
interactable = false;
murderer = false;
convicted_order = 0;
dialog_array = 
[
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.place_holder],
		"Hey there buddy!"
	],
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"hi... "
	],
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.place_holder],
		"My existance is pointless and I'm going to die someday"
	],
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.george_douglas],
		"Thats a shame... \n so do you like sports?"
	],
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"I am now going to die ffqej 3wirq ej[q30 84tr3 124t0 [9ru01 45u71 324uj[05n 0[v8n04 504nup5u 0v12345 032145 n01951 09275v1 7n55d0m2"
	],
];

default_dialog_array = [];
suspect_dialog_array = [];
witness_dialog_array = [];

on_interact = function()
{
	switch(state)
	{
		case NPC_State.default_location: dialog_array = default_dialog_array; break;
		case NPC_State.suspect: dialog_array = suspect_dialog_array; break;
		case NPC_State.witness: dialog_array = witness_dialog_array; break;
	}
	
	
	
	create_dialog(dialog_array);
	interacted = false;
	
}


