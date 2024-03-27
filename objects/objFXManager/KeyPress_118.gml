if(!layer_fx_is_enabled("FilmEffect"))
{
	layer_enable_fx("FilmEffect",true);
	application_surface_enable(true);
}
else
{
	application_surface_enable(false);
	layer_enable_fx("FilmEffect",false);
}


