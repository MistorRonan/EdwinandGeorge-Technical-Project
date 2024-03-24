/// @description 

if(type =attack_type.melee)
{
	x=owner.x;
	y=owner.y
}

var _list = ds_list_create();

var _num = instance_place_list(x,y,target,_list,true);

if(_num > 0)
{
	for (var i = 0; i < _num; ++i;)
    {
		var _inst = _list[| i];
		if(ds_list_find_index(_already_hit_by_attack,_inst) == -1)
		{
			if(_inst.iframe=0)
			{
				ds_list_add(_already_hit_by_attack,_inst);
				//deal damage
		        _inst.hp -= damage;
				_inst.iframe = 10;
			
				var _dir = 0;
				if(owner != undefined)
				{
					_dir = owner.image_xscale;
				}
			
				instance_create_depth(_inst.x,_inst.y-10,depth-10,objHitNumber,
				{
					value : damage,
					dir : _dir
				}
				)
			
			}
		}
    }
}
ds_list_destroy(_list);