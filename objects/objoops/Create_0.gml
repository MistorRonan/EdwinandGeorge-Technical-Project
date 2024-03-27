display_set_gui_size(global.view_width,global.view_height);


video = video_open(video_string);
video_pause();
video_seek_to(0);
videoStatus = 0;
video_enable_loop(false);
finished = false;
finish_func = function()
{
	room_goto(rmTitle_Screen);
	display_set_gui_size(global.view_width,global.view_height)
}


