// Auto-generated stubs for each available event.

function seq_room_transition_Moment()
{
	var _cur_teleporter = undefined; 
	with(objPlayer)
	{
		_cur_teleporter = instance_place(x,y,objTeleporter);
	}
	if(_cur_teleporter != undefined)
	{
		_cur_teleporter.teleport = true;
		
	}
	else
	{
		//this means that its the opening sequence
		
	}
}