/// @description Insert description here
// You can write your code in this editor
zoom_intensity = 0;
_my_fx = fx_create("_filter_zoom_blur")
fx_set_parameter(_my_fx,"g_ZoomBlurIntensity",zoom_intensity);
layer_set_fx("ZoomEffect",_my_fx);
//layer_enable_fx("ZoomEffect",true);



