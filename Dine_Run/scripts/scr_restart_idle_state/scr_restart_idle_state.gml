global.coins += ceil(global._score / 100); // ADD COINS BEFORE RESET OF ROOM
global.gameOver = true;
global.speedModifier = 0;
global._score = 0;
with(obj_obstacle){
instance_destroy();
}
with(obj_dino){
	sprite_index = spr_dino_stand;
}
with(obj_cloud){
instance_destroy();
}
with(obj_ground){
image_speed = 0;
}
with(obj_replay){
instance_destroy();
}
with(obj_home){
	instance_destroy()
}