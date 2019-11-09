if(space){
 if(other.sprite_index == spr_cactus_small || other.sprite_index == spr_cactus_large || other.sprite_index == spr_pterodactyl  )
 {
   scr_destroy_other();	
 } 
}else{
scr_gameover();
}
if place_meeting(x, y, obj_cake){
	global._formMeter += 10;
}
        