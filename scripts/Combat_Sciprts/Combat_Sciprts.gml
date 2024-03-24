// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Create_Attack(sprite,hitbox,dmg,force=0)
{
	state =  attack_state;
	sprite_index=sprite;
	
	var _inst = instance_create_layer(x,y,layer,objHitBox,
	{
		image_xscale : other.image_xscale,
		sprite_index : sprite,
		mask_index : hitbox,
		damage : dmg,
	});
	_inst.owner=id;
}