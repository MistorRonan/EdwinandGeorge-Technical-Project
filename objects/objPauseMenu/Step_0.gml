/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(objOptions))
{
	input = input_check_pressed("down") - input_check_pressed("up");
	enter = input_check_pressed("confirm");
	back = input_check_pressed("cancel");
	//first make sure input doesn't make the selection out of bounds 
	//or else it would result in a crash
	if(selection + input < 0)
	{
		selection = array_length(menu_section)-1;
	}
	else if(selection + input > array_length(menu_section)-1)
	{
		selection = 0;
	}
	else
	{
		selection += input;
	}


	if(enter)
	{
		switch(selection)
		{
			case 0: instance_destroy();
			break;
			case 1: instance_create_depth(0,0,depth-10,objOptions);
			break;
			case 2:
			game_end();
			break;
		}
	}
	if(back)
	{
		instance_destroy();
		
	}
	if(input != 0)
	{
		audio_play_sound(Menu_Button_Hover,5,false);
	}
}
else
{
	selection = 0;
	enter = false;
}