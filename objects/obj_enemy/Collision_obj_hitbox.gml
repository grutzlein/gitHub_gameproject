if (invincible != true) {
	hp -= obj_player.dmg;
	invincible = true;
	alarm[1] = 40;
	kb_x = 10 * sign(x - other.x);
	kb_y = 10 * sign(y - other.y);
	state_set(states.knockback);
	path_delete(path);
	x += kb_x;
	y += kb_y;
	image_blend = c_red;
	moveable = false;
	alarm[0] = 1;
}