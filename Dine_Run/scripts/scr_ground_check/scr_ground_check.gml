if (duckKey || duckKeyAlt)
{
	ducking = true;
	jumping = false;
	falling = true;
}

if (place_meeting(x, y + 1, obj_block))
{
	// we're touching the ground
	vspd = 0;
	jumping = false;
	falling = false;
	
	if (!duckKey && !duckKeyAlt)
	{
		ducking = false;
	}
		
	// if the player wants to jump
	if ((jumpKey || jumpKeyAlt) && !(duckKey || duckKeyAlt))
	{
		audio_play_sound(snd_jump, 100, false);
		jumping = true;
		vspd = -jspd;
	}
}
else
{
	if (ducking)
	{
		vspd += grav * 4;	
	}
	else
	{
		if (vspd < termVelocity)
			vspd += grav;
			
		if (sign(vspd) == 1)
			falling = true;
	}
}