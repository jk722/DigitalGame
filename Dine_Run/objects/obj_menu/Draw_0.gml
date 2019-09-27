
var i = 0;
repeat(buttons){
	draw_set_font(fnt_main);
	//draw_set_halign(fa_center);
	draw_set_color(c_ltgray);
	if(menu_index == i) draw_set_colour(c_red);
	draw_text(menu_x, menu_y + button_h * i, button[i]);
	i++;
}

if(r == 1){
	str = "Need to unlock level";
	draw_set_color(c_aqua);
	draw_text(room_width/2, room_height - 100, str);
	
}
