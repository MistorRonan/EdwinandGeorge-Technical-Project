/// @description Insert description here
// You can write your code in this editor

if(zoom_intensity >= 30)
{
	fx_set_parameter(_my_fx,"g_ZoomBlurIntensity",0);
	layer_clear_fx("ZoomEffect");
	
	instance_destroy();
	
}
else
{
	zoom_intensity += 0.05;

	fx_set_parameter(_my_fx,"g_ZoomBlurIntensity",zoom_intensity);

	
}


