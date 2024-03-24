
var _videoData = video_draw();
videoStatus = _videoData[0];
//draw_text(0,0,videoStatus)
var _c = image_blend

if(videoStatus == video_status_paused or videoStatus == 0)
{
	if(!finished)&&(alpha>=1){video_resume();};
	
	display_set_gui_size(1920,1080);
	draw_surface_ext(_videoData[1],0,0,1,1,0,c_white,alpha);
	
	/*
	var _video_pos = video_get_position();
	var _videolength = video_get_duration();

	if(_video_pos >= _videolength - 100) 
	{
		if(alpha > 0)
		finished = true;
		//room_goto_next();
	}
	*/
}






