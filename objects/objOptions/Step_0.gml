/// @description Insert description here
// You can write your code in this editor
input = input_check_pressed("down") - input_check_pressed("up");
enter = input_check_pressed("confirm");
back = input_check_pressed("cancel");


if(input != 0)
{
	audio_play_sound(Menu_Button_Hover,5,false);
}

if(!submenu)
{
	

	
	//first make sure input doesn't make the selection out of bounds 
	//or else it would result in a crash
	if(selection + input < 0)
	{
		selection = array_length(current_array)-1;
	}
	else if(selection + input > array_length(current_array)-1)
	{
		selection = 0;
	}
	else
	{
		selection += input;
	}
	if(enter)
	{
		if(menu_options[selection][option_element.name] == "Exit")
		{
			audio_play_sound(Menu_Button_Back,5,false);
		}
		else
		{
			audio_play_sound(Menu_Button_Click,5,false);
		}
		
		if(menu_options[selection][option_element.type] == option_type.func)
		{
			menu_options[selection][option_element.func]();
		}
		{
			enter = false
			submenu = true;
			subselection = 0;
		}
	}
	if(back)
	{
		instance_destroy();
	}

	
}
else
{
	if(menu_options[selection][option_element.type] == option_type.selecter)
	{
		if(subselection + input < 0)
		{
			subselection = array_length(menu_options[selection][3])-1;
		}
		else if(subselection + input > array_length(menu_options[selection][3])-1)
		{
			subselection = 0;
		}
		else
		{
			subselection += input;
		}
		
		
		
	}
	if(enter)
	{
		switch(menu_options[selection][option_element.type])
		{
			case option_type.selecter:
			if(variable_global_exists(menu_options[selection][option_element.variable]))
			{
				variable_global_set(menu_options[selection][option_element.variable],menu_options[selection][4][subselection])
			}
			else
			{
				
				switch(selection)
				{
					case 2: audio_set_master_gain(0,menu_options[selection][4][subselection])
					break;
					case 3: audio_group_set_gain(audio_group_SFX,menu_options[selection][4][subselection],0)
					break;
					case 4: audio_group_set_gain(audio_group_Music,menu_options[selection][4][subselection],0)
					break;
					
				}
			}
			break;
			
		}
		submenu = false;
		audio_play_sound(Menu_Button_Click,5,false);
	}
	
	if(back)
	{
		audio_play_sound(Menu_Button_Back,5,false);
		submenu = false;
	}

}

