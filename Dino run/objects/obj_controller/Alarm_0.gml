/// @description Insert description here
// You can write your code in this editor
randomize();
var count = irandom_range(1,2);

var i = instanace_create_layer(room_width+100, room_height - 75, "Instances", obj_obstacle);
i.sprite_index = choose(spr_enemie1, spr_enemie2);