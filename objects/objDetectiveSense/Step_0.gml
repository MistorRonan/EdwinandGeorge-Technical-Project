/// @description Insert description here
// You can write your code in this editor

if(finished)
{
	alpha -= 0.04;
	if(alpha <= 0) 
	{
		video_close();
		instance_destroy();
	}
}
else
{
	if(alpha < 1)
	{
		alpha+=0.025;
		video_pause();
		video_seek_to(10);
	}
	else
	{
		video_resume();
	}
	
}

if(keyboard_check_pressed(vk_enter))
{
	video_seek_to(video_get_duration())
	finished = true;
	
}


