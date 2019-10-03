if (global.gameOver) exit;
if(keyboard_check_pressed(vk_alt)){
	global.bday = !global.bday;
}

scr_detect_key();
scr_ground_check();
scr_jump_check();
scr_collision_check();
scr_set_sprite();