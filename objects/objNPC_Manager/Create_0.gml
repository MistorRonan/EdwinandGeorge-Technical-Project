
enum NPC_State 
{
	default_location, 
	suspect,
	witness

};

enum NPC_List
{
	archie_davies,
	audrey_baker,
	brendan_smith,
	catherithe_huges,
	clifton_allen,
	delores_fox,
	elmer_allen,
	eugene_hughes,
	finn_painter,
	gabriel_harris,
	grover_ford,
	jerome_payne,
	loretta_burton,
	olivia_hughes,
	oscar_edwards,
	paul_waddington,
	shirley_corbyn,
	theodor_parker,
	thomas_baker
	
}


//itialize each npc 
global.NPC_db[NPC_List.archie_davies] = instance_create_layer(2879,223,"NPCS",objNPCTemplate);
global.NPC_db[NPC_List.archie_davies].sprite_index = sprArichieDavies;
global.NPC_db[NPC_List.archie_davies].default_dialog_array = 
[
[
		dialog_mode.dialog,
		global.speaker_db[speaker.archie_davies],
		"You like Jazz?"
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.archie_davies],
		"There is a correct answer"
],
]
global.NPC_db[NPC_List.archie_davies].murderer = true;

global.NPC_db[NPC_List.audrey_baker] = instance_create_layer(1854,976,"NPCS",objNPCTemplate);
global.NPC_db[NPC_List.audrey_baker].sprite_index = sprAudrey_sprite;
global.NPC_db[NPC_List.audrey_baker].default_dialog_array = 
[
[
		dialog_mode.dialog,
		global.speaker_db[speaker.audrey_baker],
		"I have nothing to do in my free time except stand in place"
],

]

global.NPC_db[NPC_List.brendan_smith] = instance_create_layer(227,123,"NPCS",objNPCTemplate);
global.NPC_db[NPC_List.brendan_smith].sprite_index = sprBendanSmith;
global.NPC_db[NPC_List.brendan_smith].default_dialog_array = 
[
[
		dialog_mode.dialog,
		global.speaker_db[speaker.brendan_smith],
		"You up much now here? What other nations ye got to stick your fiddlestick into now eh?"
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"Sir, let me just move on"
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.brendan_smith],
		"move on it with ye now"
],
]
global.NPC_db[NPC_List.brendan_smith].murderer = true;

global.NPC_db[NPC_List.catherithe_huges] = instance_create_layer(2270,253,"NPCS",objNPCTemplate);
global.NPC_db[NPC_List.catherithe_huges].sprite_index = sprCathrine_sprite;
global.NPC_db[NPC_List.catherithe_huges].default_dialog_array = 
[
[
		dialog_mode.dialog,
		global.speaker_db[speaker.catherine_hughes],
		"You know, we're a really fortunate family, we're the only family here to have a couch in our house."
],
]


global.NPC_db[NPC_List.eugene_hughes] = instance_create_layer(2255,207,"NPCS",objNPCTemplate);
global.NPC_db[NPC_List.eugene_hughes].sprite_index = sprEugeneHughes;
global.NPC_db[NPC_List.eugene_hughes].default_dialog_array = 
[
[
		dialog_mode.dialog,
		global.speaker_db[speaker.eugene_hughes],
		"Greeting detectives, what brings you to our house."
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.george_douglas],
		"I dunno, I'm just the co detective while edwin really like going into peoples houses"
],
]
global.NPC_db[NPC_List.finn_painter] = instance_create_layer(263,957,"NPCS",objNPCTemplate);
global.NPC_db[NPC_List.finn_painter].sprite_index = sprFinn;
global.NPC_db[NPC_List.finn_painter].default_dialog_array = 
[
[
		dialog_mode.dialog,
		global.speaker_db[speaker.finn_painter],
		"Ah you caught me working on my masterpiece"
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"It just a yellow guy with a blue shirt, how is it a master peice"
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.finn_painter],
		"It'll take a hundred years for people to truely understand it"
],
]

global.NPC_db[NPC_List.jerome_payne] = instance_create_layer(1120,1312,"NPCS",objNPCTemplate);
global.NPC_db[NPC_List.jerome_payne].sprite_index = sprJeromePayne;
global.NPC_db[NPC_List.jerome_payne].default_dialog_array = 
[
[
		dialog_mode.dialog,
		global.speaker_db[speaker.jerome_payne],
		"Praise be"
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"Gesundhiet"
],
]

global.NPC_db[NPC_List.gabriel_harris] = instance_create_layer(1110,1385,"NPCS",objNPCTemplate);
global.NPC_db[NPC_List.gabriel_harris].sprite_index = sprGarbiel_Harries;
global.NPC_db[NPC_List.gabriel_harris].default_dialog_array = 
[
[
		dialog_mode.dialog,
		global.speaker_db[speaker.gabriel_harris],
		"Soon you will be shown what life can truely be like, the maximum potential of it."
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.gabriel_harris],
		"When everything is destroyed, with nothing left, all will become equally possible. I yearn for that day"
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.george_douglas],
		"........\nSo do you like sports?"
],
]


global.NPC_db[NPC_List.grover_ford] = instance_create_layer(2495,926,"NPCS",objNPCTemplate);
global.NPC_db[NPC_List.grover_ford].sprite_index = sprGrover_Ford_SpirteNPC;
global.NPC_db[NPC_List.grover_ford].default_dialog_array = 
[
[
		dialog_mode.dialog,
		global.speaker_db[speaker.grover_ford],
		"Greeting! Are you new here?"
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.george_douglas],
		"A we bit, my friend here is from that large pear or something"
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.grover_ford],
		"I beg your pardon?"
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"I'm from New York"
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.grover_ford],
		"Ah! I understand now, you are very welcome in the town of Newborough.",
		function()
		{
			
			global.NPC_db[NPC_List.grover_ford].default_dialog_array = 
			[
				[
					dialog_mode.choice,
					global.speaker_db[speaker.noone],
					"What would you like to talk about?",
					["Tell me about yourself",function()
					{
						instance_destroy();
						create_dialog(
						[
							
							[
								dialog_mode.dialog,
								global.speaker_db[speaker.grover_ford],
								"I was born in the great city of Burmingham, I've worked as a travveling sales man for most of my life"
							],
							[
								dialog_mode.dialog,
								global.speaker_db[speaker.grover_ford],
								"I don't sell any physical goods though.. I sell IDEAS and INSPIRATATON. See this painting up here? Finn did that"
							],
							[
								dialog_mode.dialog,
								global.speaker_db[speaker.grover_ford],
								"Because of an idea that I've had. The guy in that painting is named Shane, and I think the youth will enjoy him."
							],
						]
						)
						
					}],
					["The weather",function()
					{
						instance_destroy();
						create_dialog(
						[
							
							[
								dialog_mode.dialog,
								global.speaker_db[speaker.grover_ford],
								"The weather, ohohohoh. Don't get me STARTED because I have some thoughts"
							],
							[
								dialog_mode.dialog,
								global.speaker_db[speaker.grover_ford],
								"My personal favourite is rain, I love sitting down, listening to it in the morning while I enjoy my breakfast"
							],
							[
								dialog_mode.dialog,
								global.speaker_db[speaker.grover_ford],
								"Do you want a spicy opinion?? I don't care much for tea, I prefer coffee. The bitter taste of it is very soothing to me"
							],
						]
						)
						
					}],
					["Taste in music",function()
					{
						instance_destroy();
						create_dialog(
						[
							
							[
								dialog_mode.dialog,
								global.speaker_db[speaker.grover_ford],
								"Have you ever heard of Undertale?"
							],
							[
								dialog_mode.dialog,
								global.speaker_db[speaker.grover_ford],
								"I really list the orchestral music and the story about the civil war! very powerful"
							],
							[
								dialog_mode.dialog,
								global.speaker_db[speaker.grover_ford],
								"You look confused... did you think I was talking about something else"
							],
						]
						)
						
					}],
					
				],
				
				
				
			]
		
		}
],
]

global.NPC_db[NPC_List.loretta_burton] = instance_create_layer(1230,1385,"NPCS",objNPCTemplate);
global.NPC_db[NPC_List.loretta_burton].sprite_index = sprLoretta_sprite;
global.NPC_db[NPC_List.loretta_burton].default_dialog_array = 
[
[
		dialog_mode.dialog,
		global.speaker_db[speaker.loretta_burton],
		"Do you think much about what you really want in life? I yearn for that day"
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.george_douglas],
		"A snooker table."
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"Under normal circumstances, I would say something snarky but to be frank that sounds quite splendid."
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.loretta_burton],
		"Fools."
],
]

global.NPC_db[NPC_List.olivia_hughes] = instance_create_layer(2176,207,"NPCS",objNPCTemplate);
global.NPC_db[NPC_List.olivia_hughes].sprite_index = sprOlivia;
global.NPC_db[NPC_List.olivia_hughes].default_dialog_array = 
[
[
		dialog_mode.dialog,
		global.speaker_db[speaker.olivia_hughes],
		"I have high hope for what the future can hold, can you think of what life would be like in 100 years."
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.olivia_hughes],
		"We will have flying cars, we would be very nice, and this video game would be made without crunch and the devs would be happy with this."
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.catherine_hughes],
		"Don't worry about her, she gets a little silly at times. Youngsters, am I right?"
],
]

global.NPC_db[NPC_List.oscar_edwards] = instance_create_layer(375,4689,"NPCS",objNPCTemplate);
global.NPC_db[NPC_List.oscar_edwards].sprite_index = sprOscar_Edwards_Spirte;
global.NPC_db[NPC_List.oscar_edwards].default_dialog_array = 
[
[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"Do you always have to wear that baliclava?"
],
]

global.NPC_db[NPC_List.shirley_corbyn] = instance_create_layer(240,4720,"NPCS",objNPCTemplate);
global.NPC_db[NPC_List.shirley_corbyn].sprite_index = sprShirley;
global.NPC_db[NPC_List.shirley_corbyn].default_dialog_array = 
[
[
		dialog_mode.dialog,
		global.speaker_db[speaker.shirley_corbyn],
		"Hi"
],
]
global.NPC_db[NPC_List.shirley_corbyn].murderer = true;

global.NPC_db[NPC_List.thomas_baker] = instance_create_layer(1792,976,"NPCS",objNPCTemplate);
global.NPC_db[NPC_List.thomas_baker].sprite_index = sprNpc_Thomas_Idle;
global.NPC_db[NPC_List.thomas_baker].default_dialog_array = 
[
[
		dialog_mode.dialog,
		global.speaker_db[speaker.thomas_baker],
		"Hello, how are you two finding Newborough?"
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.thomas_baker],
		"For me, I forgot to pay the electricity bill."
],
]


global.NPC_db[NPC_List.theodor_parker] = instance_create_layer(2895,607,"NPCS",objNPCTemplate);
global.NPC_db[NPC_List.theodor_parker].sprite_index = sprTheodore;
global.NPC_db[NPC_List.theodor_parker].default_dialog_array = 
[
[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"You're here!?? you're that crime bastard from New York."
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.theodor_parker],
		"Whoa whoa now, take a breather do you greet everybody you know like that?"
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.george_douglas],
		"What's going on Edwin?"
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.edwin_wallace],
		"This creep was a mob boss in my home state"
],
[
		dialog_mode.dialog,
		global.speaker_db[speaker.theodor_parker],
		"Heyyy, don't slander me like that. I'm only human! And I wanted to take a trip to England to relax."
],
]

global.NPC_db[NPC_List.paul_waddington] = instance_create_layer(420,150,"NPCS",objNPCTemplate);
global.NPC_db[NPC_List.paul_waddington].sprite_index = sprPaulWaddington;
global.NPC_db[NPC_List.paul_waddington].default_dialog_array = 
[
[
		dialog_mode.dialog,
		global.speaker_db[speaker.paul_waddington],
		"Goofypants?"
],
]
global.NPC_db[NPC_List.paul_waddington].murderer = true;