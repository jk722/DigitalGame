
var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
bullet.direction = point_direction(x,y,obj_dino.x,obj_dino.y);
bullet.speed = 10;