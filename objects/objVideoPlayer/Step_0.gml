/// @description Insert description here
// You can write your code in this editor

if(finished)
{
	
	alpha -= 0.04;
	if(alpha <= 0) 
	{
		
	}
	if(videoStatus == video_status_closed)
	{
		/*
		finish_func();
		instance_destroy();*/
	}
}


if(keyboard_check_pressed(vk_enter)) && (skippable)
{
	video_close();
	finished = true;
   instance_destroy();
}

