enum dialog_mode
{
	dialog,
	inspection,
	choice
	
}

enum speaker
{
	noone,
	place_holder,
	edwin_wallace, 
	george_douglas,
	jamie, 
	grover_ford,
	oscar_edwards,
	paul_waddington,
	thomas_baker,
	olivia_hughes,
	jerome_payne,
	eugene_hughes,
	finn_painter,
	theodor_parker,
	archie_davies,
	gabriel_harris,
	brendan_smith,
	catherine_hughes,
	loretta_burton,
	shirley_corbyn,
	audrey_baker,
	squidward_testicles

}

enum dialog_element
{
	mode,
	speaker,
	text,
	image,
	func = 3,
	choices = 3,
}

#region speaker database
global.speaker_db = 
[
{
	name : "",
	portait : undefined,
	
},
{
	name : "Sample mcSampleface",
	portait : {
		neutral : sprPlaceholderPortrait,
				
			},
	
},
{
	name:"Edwin Wallace",
	portait : 
	{
		neutral : sprEdwin_Portrait_
	},
},
{
	name:"George Douglas",
	portait : {
		neutral : George_portrait
	},
},
{
	name:"Sargent Jamie",
	portait : {
	neutral : sprJamiePortrait	
	},
},
{
	name:"Grover Ford",
	portait : {
	neutral : Grover_Ford	
	},
},
{
	name:"Oscar Edwards",
	portait : {
	neutral : Oscar_Edwards	
	},
},
{
	name:"Paul Waddington",
	portait : {
	neutral : sprPaulPortrait	
	}
},
{
	name: "Thomas Baker",
	portait : {
		neutral : Thomas_Potrait
	},
},
{
	name: "Olivia Hughes",
	portait : {
	neutral : sprOlivialPortrait	
	}
},
{
	name: "Jerome Payne",
	portait : {
	neutral : Jerome_Payne
	}
},
{
	name: "Eugene Hughes",
	portait : {
	neutral : Eugene_Hughes	
	}
},
{
	name: "Finn Painter",
	portait : {
	neutral : sprFinnPortrait	
	}
},
{
	name: "Theodor Parker",
	portait : {
	neutral : Theodore_Portrait	
	}
},
{
	name: "Archie Davies",
	portait : {
	neutral : sprArchiePortrait	
	}
},
{
	name: "Gabriel Harris",
	portait : {
	neutral : Gabriel_Harries	
	}
},
{
	name:"Brendan Smith",
	portait : {
	neutral : Brendan_Smith_Portrait
	}
},
{
	name:"Catherine Hughes",
	portait : {
	neutral : Catherine_Portrait	
	}
},
{
	name:"Loretta Burton",
	portait : {
	neutral : Loretta_Portrait	
	}
},
{
	name:"Shirley Corbyn",
	portait : {
	neutral : sprShirley_Portriat	
	}
},
{
	name:"Audrey Baker",
	portait : {
	neutral : Audrey_Portrait	
		
	}
},
{
	name:"Squidward",
	portait : {
	neutral : Squidward_Portrait
		
	}
},
]

#endregion

#region global variables for dialog



#endregion

function create_dialog(dialog_array = 
[
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.place_holder],
		"This dialog is empty page 1"
	],
	[
		dialog_mode.dialog,
		global.speaker_db[speaker.place_holder],
		"Even more fucking dialogue, I just want to see how this reacts to the margins, page 2"
	],
]
)
{
	var _inst = instance_create_layer(0,0,"GUI",objTextBox);
	_inst.dialog = dialog_array;
};
