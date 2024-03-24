event_func = function()
{
	var _vid_string = "Cutscenes/BADENDING.mp4";
	if(objCase_Manager.cases_correct < 3)
	{
		_vid_string = "Cutscenes/BADENDING.mp4"
		
	}
	else
	{
		_vid_string = "Cutscenes/GOODENDING.mp4"
	}
	var _vid = instance_create_layer(0,0,"GUI",objVideoPlayer,
			{
				video_string : _vid_string,
				alpha : 1
			}
			);
		_vid.skippable = false;	
			
			_vid.finish_func = function()
			{
				
				var _vid2 = instance_create_layer(0,0,"GUI",objVideoPlayer,
				{
					video_string : "Cutscenes/Edwin and George Credits.mp4",
					alpha : 1
				}
				);
				
				_vid2.finish_func = function()
				{
					if(objCase_Manager.cases_correct < 3)
					{
						objPlayer.x = 3568; 
						objPlayer.y = 561;
					}
					else
					{
						instance_activate_layer("GoodEndingLayer");
						objPlayer.x = 1600;
						objPlayer.y = 629;
					}
				}
			}
	
	
}