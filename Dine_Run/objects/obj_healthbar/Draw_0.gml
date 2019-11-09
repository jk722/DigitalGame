/// @description Insert description here
// You can write your code in this editor\
draw_self();
if !instance_exists(obj_player) exit;

draw_set_color(c_blue);
draw_rectangle(x+4, y+4, x + 123 * obj_player.Bar / obj_player.MaxBar , y+11, false);
draw_set_color(c_black);