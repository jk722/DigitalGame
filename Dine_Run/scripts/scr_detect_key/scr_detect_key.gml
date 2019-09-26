if (!global.inverse)
{
	jumpKey = keyboard_check_pressed(vk_space);
	jumpKeyAlt = keyboard_check_pressed(vk_up);
	duckKey = keyboard_check(vk_down);
	duckKeyAlt = keyboard_check(vk_alt);
}
else
{
	jumpKey = keyboard_check_pressed(vk_down);
	jumpKeyAlt = keyboard_check_pressed(vk_alt);
	duckKey = keyboard_check(vk_space);
	duckKeyAlt = keyboard_check(vk_up);
}