/// @description Insert description here
// You can write your code in this editor

alpha_fade = Approach(alpha_fade,1,0.05)

key_input = input_check_pressed("jump");

input = input_check_pressed("right") - input_check_pressed("left");
char = clamp(char,1,string_length(dialog[page][dialog_element.text])+1)

if(key_input)
{
	
	if(char < string_length(dialog[page][dialog_element.text]))
	{
		current_string = dialog[page][dialog_element.text];
		char = string_length(dialog[page][dialog_element.text])
		key_input = false;
	}
	else
	{
		if(dialog[page][dialog_element.mode] != dialog_mode.choice)
			{
			//check if there is a function
			if(array_length(dialog[page])>=4)
			{
				if(is_callable(dialog[page][dialog_element.func]))
				{
					dialog[page][dialog_element.func]();
				}
			}
			//check if theres another page after this
			if(page+1 == array_length(dialog))
			{
				instance_destroy();
			}
			else
			{
				audio_play_sound(Case_Submit,5,false);
				//reset 
				current_string = "";
				char = 1;
				
				page += 1;
				
			}
		}
	}
	
}

//fix the wonky string
if(string_length(current_string) > string_length(dialog[page][dialog_element.text]))
{
	var _diff = string_length(current_string) - string_length(dialog[page][dialog_element.text]);
	current_string = string_delete(current_string,string_length(dialog[page][dialog_element.text]),_diff)
}
if(char >= string_length(dialog[page][dialog_element.text]))
{
	if(dialog[page][dialog_element.mode] == dialog_mode.choice)
	{
		if(selection + input < 0)
		{
			selection = array_length(dialog[page])-4;
		}
		else if(selection + input > array_length(dialog[page])-4)
		{
			selection = 0;
		}
		else
		{
			selection += input;
		};
				
		if(key_input)
		{
			
			var _meth = method(id,dialog[page][dialog_element.choices + selection][1])
			_meth();
		}
		if(input != 0)
		{
			audio_play_sound(Menu_Button_Hover,5,false);
		};
	}
}