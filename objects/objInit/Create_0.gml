//enums
enum PlaySPR
{
	idle,
	walk_horizontal,
	walk_down,
	walk_up,
	jump,
	fall,
	wall_slide
		
}

enum sprite
{
	idle,
	walk_horizontal,
	walk_down,
	walk_up,
}


//camera init 

#macro WIDTH global.ideal_width
#macro HEIGHT global.ideal_height
#macro DESIGN_WIDTH 1920
#macro DESIGN_HEIGHT 1080
#macro SCALE 3

global.window_scale = 3;
global.view_width = 640;
global.view_height = 360;

global.text_speed = 5; //in frames
global.font = fnt_text;

//global.game_surface = surface_create(global.view_width,global.view_height)

audio_group_load(audio_group_SFX);

set_resolution(DESIGN_WIDTH, false, false, false, 1);

alarm[0] = 1;

Dialogue_System();

