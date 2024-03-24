var _outline_buffer = 1

draw_text_color(x-_outline_buffer,y,value,c_black,c_black,c_black,c_black,1);
draw_text_color(x+_outline_buffer,y,value,c_black,c_black,c_black,c_black,1);
draw_text_color(x,y+_outline_buffer,value,c_black,c_black,c_black,c_black,1);
draw_text_color(x,y-_outline_buffer,value,c_black,c_black,c_black,c_black,1);

draw_text_color(x,y,value,c_red,c_red,c_red,c_red,1);
