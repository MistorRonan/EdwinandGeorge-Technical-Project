/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,objPlayer)) && (teleport_target != noone)
{
	var _inst = instance_place(x,y,objPlayer);
	_inst.freeze_input = true;
	if(!used)
	{
		my_seq = layer_sequence_create("Gui",camera_get_view_x(view),camera_get_view_y(view),seq_room_transition);
		used = true;
	}
	if(teleport) 
	{
		
		
		var _cam_seg = instance_place(teleport_target.x,teleport_target.y,objCam_Segment);
		camera_set_view_pos(view,_cam_seg.x,_cam_seg.y);
		layer_sequence_x(my_seq,camera_get_view_x(view))
		layer_sequence_y(my_seq,camera_get_view_y(view))
		_inst.x = teleport_target.x+8;
		_inst.y = teleport_target.y+8;
		teleport = false;
	}
	
}
else
{
	
	used = false;
}
if(layer_sequence_is_finished(my_seq))
{
	layer_sequence_destroy(my_seq);
	objPlayer.freeze_input = false;
	objGeorge.x = objPlayer.x;
	objGeorge.y = objPlayer.y;
}



