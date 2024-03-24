/// @description Arrays and variable definitions

selection = 0;
subselection = 0;
menu_selected = 0;
menu_options = 
[
	[ //name, type, variable being ajusted, names of options, options
		"Text Speed", option_type.selecter, "text_speed", ["Slow","Medium","Fast","Mach speed"], [10,5,2,0.5]
	],
	[
		"Font", option_type.selecter, "font", ["Default","Simple"], [fnt_text,fnt_Simple]
	],
	[
		"Master Volume", option_type.selecter, 0, ["100%","75%","50%","25%","0%"], [1,0.75,0.5,0.25,0]
	],
	[
		"SFX Volume", option_type.selecter, audio_group_SFX, ["100%","75%","50%","25%","0%"], [1,0.75,0.5,0.25,0] 
	],
	[
		"Title Screen Music", option_type.selecter, audio_group_Music, ["100%","75%","50%","25%","0%"], [1,0.75,0.5,0.25,0]
	],
	[
		"Exit", option_type.func, function(){instance_destroy();}
	],
]

current_array = menu_options;
option_set = 0;
submenu = false;

freeze_input = false;
#region blacklisted inputs

#endregion

//controls for configuration
//string verb

