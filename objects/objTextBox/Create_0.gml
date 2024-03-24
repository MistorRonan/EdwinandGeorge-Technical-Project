/// @description Insert description here
// You can write your code in this editor
dialog = [
	
];

alpha_fade = 0;

page = 0;
char = 1;
finished = false;
current_string = "";

my_timer = time_source_create(time_source_game, global.text_speed, time_source_units_frames,function()
{
	if(char <= string_length(dialog[page][dialog_element.text]))
	{
		if((char mod 2) == 0) {audio_play_sound(Menu_Button_Click,0,false,1,0,choose(1,1,1.05,1,0.95,1))}
		current_string += string_char_at(dialog[page][dialog_element.text],char);
		char ++;
	}
	
},[],-1)

time_source_start(my_timer);


//textbox variables
x_margin = 16;
y_margin = 8;
selection = 0;
