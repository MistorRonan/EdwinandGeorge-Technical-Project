
#region particles

//player after image
var _p1 = part_type_create()

part_type_sprite(_p1,sprPlayerJump,false,false,false);
part_type_life(_p1,60,60);
part_type_alpha2(_p1,1,0);


global.par_Player_AfterImage = _p1;

#endregion

#region resolution 

global.window_scale = 3;
global.view_width =640;
global.view_height = 360;
display_set_gui_size(global.view_width,global.view_height);
camera_set_view_size(view, global.view_width, global.view_height);


#endregion

