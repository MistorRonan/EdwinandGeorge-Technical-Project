/// @description 
// You can write your code in this editor
global.current_case = -1;
instance_deactivate_layer("Case1");
instance_deactivate_layer("Case2");
instance_deactivate_layer("Case3");
instance_deactivate_layer("GoodEndingLayer");
instance_deactivate_layer("Instances_2")

cases_correct = 0;
cases_done = 0;
tick =0;
delay = 600;

global.case_mission[0] = 
{
};

global.case_mission[1] = 
{
	case_completed : false,
	suspects : [global.NPC_db[NPC_List.thomas_baker],global.NPC_db[NPC_List.paul_waddington],global.NPC_db[NPC_List.olivia_hughes]],
	suspect_names : ["Thomas Baker","Paul Waddington","Olivia Hughes"],
	#region suspect dialog
	suspect_dialog : 
	[
		[//thomas baker dialoge
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.edwin_wallace],
				"Alright, tell us what happened"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.thomas_baker],
				"Well, I was going upstairs to use the restrooms. Then as I was leaving, I saw Patricia at the top of the flight then she just fell down."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.george_douglas],
				"How far away were you from her?"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.thomas_baker],
				"A was about 2 metres away from her"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.edwin_wallace],
				"Who was with you"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.thomas_baker],
				"It was just me at the top of the stairs..."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.edwin_wallace],
				"Hmph"
			],
		],
		[//paul waddington dialoge
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.edwin_wallace],
				"Alright, tell us what happened"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.paul_waddington],
				"Well, I was doing my usual routine of serving my wonderful customers. The kabonk! My most precious second wife Patrica fell to her demise."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.paul_waddington],
				"It was all a blur. I looked around and saw Thomas at the top of the flight. That man has been very rude to me, and I have alot to say about him."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.george_douglas],
				"Like what?"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.edwin_wallace],
				"George! Paul, we've heard what we needed, thank you for your time."
			],
		],
		[//Olivia dialoge
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.olivia_hughes],
				"Am I in trouble sir?"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.george_douglas],
				"Lass, we're going to question you, just answer us, okay?"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.edwin_wallace],
				"Anyways, where were you at the time Patricia died"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.olivia_hughes],
				"Well, I was at my house which is next door to the pub. You can ask my parents to confirm that."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.edwin_wallace],
				"Now surely things we're that simple, the police told me there was a note you wrote."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.olivia_hughes],
				"Uhhh, listen that was before, I wouldn't have wished that upon her okay!"
			],
		]
	],
	#endregion
	suspect_portaits : [Thomas_Potrait,sprPaulPortrait, sprOlivialPortrait],
	
	witnesses : [global.NPC_db[NPC_List.grover_ford],global.NPC_db[NPC_List.jerome_payne],global.NPC_db[NPC_List.oscar_edwards]],
	#region witness dialog
	witness_dialog : 
	[
		[//grover dialog
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.grover_ford],
				"Paul is a lovely gentleman. But around 5 minutes before Patricia fell, he went to the supply closet."
			],
		],
		[//payne dialog
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.jerome_payne],
				"Thomas had larger with him upstairs, I'm sure that was involved"
			],
		],
		[//oscar dialog
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.oscar_edwards],
				"Ye see, I was sitting on a stool near the stairs, and only saw Thomas at the top of the flight only after Patricia fell."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.george_douglas],
				"Why are you wearing a baliclava?"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.oscar_edwards],
				"Allergies..."
			],
		],
	],
	
	#endregion
	murderer : 1
	
}
global.case_mission[2] = 
{
	case_completed : false,
	suspects : [global.NPC_db[NPC_List.archie_davies],global.NPC_db[NPC_List.finn_painter],global.NPC_db[NPC_List.theodor_parker]],
	suspect_names : ["Archie Davies","Finn Painter","Theodroe Parker "],
	#region suspect dialog
	suspect_dialog : 
	[
		[//archie dialoge
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.george_douglas],
				"What happened at the time of midnight last night?"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.archie_davies],
				" I had me dinner at home late that evening listening to my favourite singer Louis Armstrong."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.archie_davies],
				" That man has some talent, I tell ya. I know every one of his songs off by heart."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.archie_davies],
				"Do you know his stuff Inspectors? Anyways, I was going to go for a walk but couldn't find my coat."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.archie_davies],
				"I thought maybe someone nicked it from me. I went down to the Studio to see if it was in there, I heard someone got themselves shot. And here I am now, just arriving Inspector."
			],
		],
		[//  dialoge
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.edwin_wallace],
				"Alright, tell us what happened around midnight"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.finn_painter],
				"I was at the Studio in the music practice room recording when I heard the sound of a gunshot from the ground floor."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.finn_painter],
				"I ran downstairs and into the room and saw my dear friend Liam dead on the floor. I ran over to him and then saw the note on his chest."
			],
		],
		[//theodore dialoge
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.edwin_wallace],
				"Admit to the crime you bastard!"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.theodor_parker],
				"Me and some of my New York advisors  were in the back room of the Studio talking business."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.edwin_wallace],
				"ADMIT IT!!"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.george_douglas],
				"Edwin, calm down, you need to act professionally, put aside your grudes and interview, I'll take over. Continue Theodor."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.theodor_parker],
				"Thank yous gentle man. Anyway I heard the sound of a gunshot. It's a sound I'm familiar with and knew someone was up to no good. I didn't want no part of it or the cops."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.theodor_parker],
				"Me and my companions stepped outside the back for a smoke and came back later to get the word on the street. It seems one of the musician's took the highway to heaven."
			],
		]
	],
	#endregion
	suspect_portaits : [sprArchiePortrait,sprFinnPortrait, Theodore_Portrait],
	
	witnesses : [global.NPC_db[NPC_List.eugene_hughes],global.NPC_db[NPC_List.gabriel_harris],global.NPC_db[NPC_List.loretta_burton]],
	#region witness dialog
	witness_dialog : 
	[
		[//eugene
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.eugene_hughes],
				"My family We heard a gunshot and ran towards the Studio. We saw Archie Davies near the Studio walking away"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.eugene_hughes],
				"My daughter noticed that he isn't wearing his usual trenchcoat too, he said he left it there"
			],
		],
		[//gabriel
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.gabriel_harris],
				"He's a mobster from New York. He thinks he's an author but pretty shit at it. He's jealous that Liam Orwell was better at writing than he was."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.gabriel_harris],
				"I heard on the street he was throwing around a story that his gun was stolen from his house."
			],
		],
		[//oscar dialog
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.loretta_burton],
				"I was in the ladies room when I heard a loud noise. I thought something large had smashed in the upper practice rooms the artists use."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.loretta_burton],
				"I ran out of the ladies room and into the ground floor room and saw Finn Painter beside Liam Orwell's body, he was crouched down beside him reading something on a piece of paper."
			],
		],
	],
	
	#endregion
	murderer : 0
	
}
global.case_mission[3] = 
{
	case_completed : false,
	suspects : [global.NPC_db[NPC_List.jerome_payne],global.NPC_db[NPC_List.shirley_corbyn],global.NPC_db[NPC_List.catherithe_huges]],
	suspect_names : ["Jerome Payne","Shirley Corbyn","Catherine Hughes"],
	#region suspect dialog
	suspect_dialog : 
	[
		[//jerome dialoge
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.george_douglas],
				"What happened at the graveyard this morning?"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.jerome_payne],
				"We have a special celebration mass tomorrow morning in memory of Bob Corbyn. The poor chap was only in his early 20's and passed away recently."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.jerome_payne],
				"We had his funeral mass but not all of his friends and relatives could attend."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.jerome_payne],
				"His dear mother Shirley Corbyn asked me to arrange it. We had some volunteers in to help us to give the church a good polishing and rearrange some of the seating."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.jerome_payne],
				"I was back in the sanctuary all evening should they have any questions. The first I knew about poor Dr Butcher was when I heard Ms Catherine Hughes screaming outside."
			],
		],
		[//shirley  dialoge
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.edwin_wallace],
				"Alright, tell us what happened this morning"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.shirley_corbyn],
				"Every day Inspector, I visit my beloved son Robert, or Bob as he was called, in the graveyard."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.shirley_corbyn],
				"It doesn't sound right, does it, that a mother visits her son in the graveyard and not the other way around as natural."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.shirley_corbyn],
				"My Bob should have been diagnosed earlier and should have got medical intervention to save him. I tell Bob about my day, then I go home to get supper on for the family."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.shirley_corbyn],
				"I did see someone else in the graveyard at the same time but can't say I remember for sure who it was."
			],
			
		],
		[//theodore dialoge
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.edwin_wallace],
				"Okay, tell me what you know"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.catherine_hughes],
				"I was working with Mr Grover Ford in the church this evening. We're both volunteers and were preparing the church for a celebration tomorrow."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.catherine_hughes],
				"Grover had called out to Pastor Payne asking him a question about some seats being moved."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.catherine_hughes],
				"However, Pastor Payne didn't reply. We waited for a bit then Grover asked me to check and see if the Pastor was in the graveyard beside the church."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.catherine_hughes],
				"I thought I saw someone from the corner of my eye and didn't want to call out disturbing a graveyard visitor, that would be an unseemly thing to do."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.catherine_hughes],
				"I then saw what I thought might be the bottom of Pastor Payne's feet bending over a grave."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.catherine_hughes],
				" It was a recent grave so the dirt was still on a mound and not flat. It was only when I got"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.catherine_hughes],
				"closer that I saw that it was Dr Lucas Butcher lying face down beside the mound with blood all over his head and face. I screamed and ran for help."
			],
		]
	],
	#endregion
	suspect_portaits : [Jerome_Payne,sprShirley_Portriat, Catherine_Portrait],
	
	witnesses : [global.NPC_db[NPC_List.thomas_baker],global.NPC_db[NPC_List.grover_ford],global.NPC_db[NPC_List.audrey_baker]],
	#region witness dialog
	witness_dialog : 
	[
		[//eugene
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.thomas_baker],
				"I was across the street outside The Studio talking to mates. I'd seen Dr Butcher a bit earlier go into the graveyard."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.thomas_baker],
				"A short while later,  I saw Shirely Cobern. I was good friends with her son Bob. Bob got a cancer diagnosis earlier this year."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.thomas_baker],
				"The poor fella died within a couple of months of being told. When I saw Shirley enter the graveyard shortly after Dr Butcher, I didn't call out to say hi because of where she was going. She visits Bob's grave a lot."
			],
		],
		[//gabriel
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.grover_ford],
				"I was in the church while Jerome Payne,  the pastor of the church was in the sanctuary at the back."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.grover_ford],
				"When I'd have questions every so often, I'd give him a shout and he'd come out and answer them."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.grover_ford],
				"He wasn't there one of the times and I asked Ms Catherine Hughes to go and see if Pastor Payne was in the graveyard."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.grover_ford],
				"It was good to get a break from her for a while as she's always talking about her close friend Dr Butcher as if them being friends make her a Dr too."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.grover_ford],
				"Anyways, next thing I hear is her screaming her head off outside. Ends up, Pastor Payne was in the men's room at that time."
			],
		],
		[//ciaranmom  dialog
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.audrey_baker],
				"Inspector, you know me, I'm not one for gossiping at all."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.audrey_baker],
				"But if it's my opinion you're looking for, I'd look no further than that Shirley Corbyn one."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.audrey_baker],
				"No I wasn't anywhere near the church this evening, I was at home minding my own business."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.audrey_baker],
				"I heard that Grover Ford saw Pastor Payne and Shirley Cobern near the graveyard."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.audrey_baker],
				"Shirley Corbyn is always giving out that it was  Dr Butcher's fault why her son died "
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.audrey_baker],
				"and doesn't care that the respected Dr thought highly of her son Bob ."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.audrey_baker],
				"Talk about the wailing and crying that comes out of her. She needs to get a grip on herself."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.audrey_baker],
				"You don't hear me sobbing after losing my Henry 2 years ago, it's me that needs the sympathy."
			],
		],
	],
	
	#endregion
	murderer : 1
	
}
global.case_mission[4] = 
{
	case_completed : false,
	suspects : [global.NPC_db[NPC_List.gabriel_harris],global.NPC_db[NPC_List.oscar_edwards],global.NPC_db[NPC_List.brendan_smith]],
	suspect_names : ["Gabriel Harris","Oscar Edward","Brendan Smith"],
	#region suspect dialog
	suspect_dialog : 
	[
		[//jerome dialoge
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.george_douglas],
				"What happened at the graveyard this morning?"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.gabriel_harris],
				"What is a friend really Inspector? I had friends in school, where we all wore the same uniform, went to classes together and played football during break time. Do I still hang around with said friends?"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.gabriel_harris],
				"Maybe my mate Douglas but that's it. I wore trousers like David Adams did, we both walked along the same landing and stairs in the building, so were we friends?"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.gabriel_harris],
				"I didn't play football with him or go to another mates house. I knew his face, he knew mine, we both drank pints in The Studio,"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.edwin_wallace],
				"Where were you?"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.gabriel_harris],
				"I was in the Studio down the road with some people having a few pints. Winding down from the stress of the day."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.gabriel_harris],
				"You probably shouldn't ask me if I was with friends or acquaintances because I seem to have a problem sorting people I know into these boxes of yours."
			],
			
		],
		[//oscar dialoge
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.edwin_wallace],
				"Okay, tell us what you know about the victim "
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.oscar_edwards],
				"I know of Mr Adams. He was an immigrant from Ireland and seemed to be very antagonistic towards his new countrymen."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.oscar_edwards],
				"Considering we didn't issue him an invitation to join us in our beloved country, he was a gatecrasher really."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.edwin_wallace],
				"And Mr Morris, did you have a problem with David Adams as a consequence of that?"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.oscar_edwards],
				"No personal problem per say. However, let's put it this way, my views on His Majesty King George V and the leaders of The United Kingdom were not the same as Mr Adams."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.george_douglas],
				"Where were you at the time."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.oscar_edwards],
				"I was with my good friend Brendan Smith as a guest in his exclusive gentlemans club."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.oscar_edwards],
				"I would love to be able to give you more details Inspector but unfortunately, being new to the area, I have nothing further to assist you."
			],
		],
		[//brendan smmtih
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.edwin_wallace],
				"Mr Smith please describe your association with Mr David Adams?"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.brendan_smith],
				"My ASSOCIATION? according to the Oxford dictionary the word association means 'a group of people organised for a joint purpose'."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.brendan_smith],
				"I and David Adams most certainly did NOT have any association in common."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.brendan_smith],
				"Would you care to rephrase that question in a correct grammatical way?"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.george_douglas],
				"You're not a dictionary god damnit, speak up"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.brendan_smith],
				"I speak on my own terms"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.edwin_wallace],
				"Alright, What was your relationship with Mr David Adams?"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.brendan_smith],
				"We didn't have any relationship Inspector. I know him to be a traitor to our majesty George V and all that our United Kingdom stands for."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.brendan_smith],
				"He is from Ireland and he is a well-known member of the IRB and not welcome in our country."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.brendan_smith],
				"Do you know what IRB stands for or is your knowledge on par with your knowledge of the English language?"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.george_douglas],
				"Where we're you damnit?"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.brendan_smith],
				"Unlike you Inspector, my position in life does not require me  to clock-in and clock-out at certain times of the day."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.brendan_smith],
				"In the evening you mention, as far as I recall, I was with some acquaintances at the exclusive club in Yorkshire. I was there until 2am."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.edwin_wallace],
				"Any witnesses?"
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.brendan_smith],
				"Inspector it's an exclusive club with a private membership. I shall not betray my fellow members by providing their names to you."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.brendan_smith],
				"My loyalty is to his Majesty King George and us his loyal servants. This interview is now over."
			],
		]
	],
	#endregion
	suspect_portaits : [Gabriel_Harries,Oscar_Edwards, Brendan_Smith_Portrait],
	
	witnesses : [global.NPC_db[NPC_List.finn_painter],global.NPC_db[NPC_List.theodor_parker],global.NPC_db[NPC_List.olivia_hughes]],
	#region witness dialog
	witness_dialog : 
	[
		[//eugene
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.finn_painter],
				"That Brendan Smith is a strange one. I heard he is a member of the Anti- IRB."
			],
			
		],
		[//gabriel
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.theodor_parker],
				"I sort of know Gabriel and I don't. His type interests me as a writer and he looks like he would make a good villain in one of my novels. I met him a couple of times in The Studio, you know the social club."
			],
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.theodor_parker],
				"The last time, the fella Gabriel was ranting on about something called the 'blah, blah hannock na heirin' movement and taking care of them. Not in a good way if you know what I mean."
			],
			
		],
		[//ciaranmom  dialog
			[
				dialog_mode.dialog,
				global.speaker_db[speaker.olivia_hughes],
				"Mr Brendan Smith is a dominating character and appears to be very anti-Irish. It's ironic considering his first name is a Gaelic name."
			],
			
		],
	],
	
	#endregion
	murderer : 2
	
}
case_initialised = false;

