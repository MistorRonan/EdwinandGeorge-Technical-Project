view_x = 1920/global.window_scale;
view_y = 1080/global.window_scale;


tile_size = 16;
lookahead = 0;
max_lookahead = 1*tile_size;


/*
these variables are about camera segments
the first one allows you to enable their use (true) or disable (false); 

their minimum size must be 640 by 360 

*/
camera_segments = true;
cur_cam_seg = undefined;
previous_cam_seg = undefined;

alarm[0] = 1;

y_buffer = 1 * tile_size; 
x_buffer = 0 * tile_size;

camera_speed = 0.4;


global.camview = objPlayer;