/// @description Insert description here
// You can write your code in this editor

if(finished)
{
	video_close();
	alpha -= 0.04;
	if(alpha <= 0) 
	{
		
	}
	if(videoStatus == video_status_closed)
	{
		
		finish_func();
		instance_destroy();
	}
}


if(keyboard_check_pressed(vk_enter))
{
	video_seek_to(video_get_duration());
	finished = true;
	
}

