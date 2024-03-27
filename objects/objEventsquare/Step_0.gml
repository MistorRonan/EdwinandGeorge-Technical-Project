/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,objPlayer))
{
	if(!collided)
	{
		event_func();
		collided = true;
	}
	
}
else
{collided = false;}



