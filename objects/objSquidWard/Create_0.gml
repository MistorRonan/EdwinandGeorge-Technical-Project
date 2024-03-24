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
		global.speaker_db[speaker.squidward_testicles],
		"Hello, my name is Squidward, and I can save you, but only if you give me a nice smooch.",
		//function(){audio_play_sound(Squid,500,false,1)}
	],
	
];

default_dialog_array = [];
suspect_dialog_array = [];
witness_dialog_array = [];

on_interact = function()
{
	
	
	audio_play_sound(Squid,500,false,5)
	
	create_dialog(
	[
		[
		dialog_mode.dialog,
		global.speaker_db[speaker.squidward_testicles],
		"Hello, my name is Squidward, and I can save you, but only if you give me a nice smooch."
		],
		[
		dialog_mode.choice,
		global.speaker_db[speaker.noone],
		"Do you kiss him?",
		["YES",function(){room_goto(rm_bestending)}],
		["no",function(){room_goto(rm_superbadengind)}],
		],
	]
	);
	interacted = false;
	
}


