/// @description Insert description here
// You can write your code in this editor

if(!audio_is_playing(best_ending30))
{
	tick ++;
	if(!audio_is_playing(Tony_man)) 
	{
		audio_play_sound(Tony_man,500,false)
		if(tick > 200)
		{
			game_end()
			
		}
	}
}




