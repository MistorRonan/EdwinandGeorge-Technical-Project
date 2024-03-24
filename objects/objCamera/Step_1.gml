var rw = room_width;
var rh = room_height;
var x_min = 0;
var y_min = 0;

view_width = 1920/global.window_scale;
view_height = 1080/global.window_scale;



if(camera_segments)
{
	if(global.camview == objPlayer)
	{
		with(objPlayer)
		{
			if(place_meeting(x,y,objCam_Segment))
			{
				if(instance_place(x,y,objCam_Segment) != other.cur_cam_seg) && (other.cur_cam_seg != undefined)
				{
					other.previous_cam_seg = other.cur_cam_seg;
					
				}
				
				other.cur_cam_seg = instance_place(x,y,objCam_Segment);
			}
			else
			{
				other.cur_cam_seg = undefined;
			}
		}
		
	}
	
}

if (instance_exists(global.camview))
{
	if(cur_cam_seg != undefined)
	{
		rw = cur_cam_seg.bbox_right;
		x_min = cur_cam_seg.bbox_left;
		rh = cur_cam_seg.bbox_bottom;
		y_min = cur_cam_seg.bbox_top;
	}
	else if (previous_cam_seg != undefined)
	{
		x_min = previous_cam_seg.bbox_right;
		y_min = previous_cam_seg.bbox_top;
	}
	
	
	var _x = clamp(global.camview.x - view_x/2, x_min, rw - view_x);
	var _y = clamp((global.camview.y - y_buffer) - view_y/2, y_min, rh - view_y);
	
	
	
	var _cur_x = camera_get_view_x(view);
	var _cur_y = camera_get_view_y(view);
	
	if(global.camview == objPlayer)
	{
		
		
		if(!((_cur_x + lookahead)<= 0)) && (!((_cur_x + lookahead) > (rw - view_x)))
		{
			_cur_x += lookahead;
			
		}
		else
		{
			lookahead = Approach(lookahead,0,2);
			_cur_x += lookahead;
		}
		
	}
	
	camera_set_view_pos(view, lerp(_cur_x, _x, camera_speed), lerp(_cur_y, _y, camera_speed));
	if(!instance_exists(objVideoPlayer))
	{ 
		camera_set_view_size(view, view_width, view_height);
	}
}

