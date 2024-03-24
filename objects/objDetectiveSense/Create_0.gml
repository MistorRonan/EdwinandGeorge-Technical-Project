display_set_gui_size(global.view_width,global.view_height);

vid_string = ""

switch(global.current_case)
{
	case 1: video = video_open("Cutscenes/DS_PUB.mp4")
	
	
}




video_pause();
video_seek_to(0);
videoStatus = 0;
video_enable_loop(false);
finished = false;
finish_func = function()
{
	room_goto_next();
	
}


