//show_debug_message("scr_game_start");
global.gameOver = false;
global.speedModifier = 1;
global._score = 0;
// start creating obstacles
with(obj_player){
	obj_player.Bar = obj_player.MaxBar;	
	alt = false;
}
with(obj_controller){
alarm[0] = room_speed * 3;

//start creating clouds
alarm[1] = room_speed * 10;

//start creating cakes
alarm[2] = room_speed * 11;

//start creating inverse obstacles
alarm[3] = room_speed * 7;
}

with(obj_ground){
randomize();
var n = irandom(10);

if (n == 0 || n == 1)
{
	image_index = choose(0, 2);
}
else
{
	image_index = 1;
}

image_speed = 0;
}

with(obj_obstacle){
instance_destroy();
}
with(obj_bat){
instance_destroy();
}with(obj_executioner){
instance_destroy();
}
with(obj_gap){
instance_destroy();
}
with(obj_bullet){
instance_destroy();
}