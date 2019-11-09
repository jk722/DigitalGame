
sprite_index = spr_bat_attack;
image_speed = 1;
var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
bullet.direction = point_direction(x,y,obj_player.x,obj_player.y);
bullet.speed = 10;

