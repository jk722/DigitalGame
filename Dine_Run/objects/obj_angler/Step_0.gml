/// @description Insert description here
// You can write your code in this editor
speed = -20 * global.speedModifier;  //how many pixels the instance will move.  In this case because its -20 its 
									// to the left.

if (x < -100) //Check to see if instance is off the creen by 100 pixels and then delets it
{
	instance_destroy();
}

scr_angler_mechanics();