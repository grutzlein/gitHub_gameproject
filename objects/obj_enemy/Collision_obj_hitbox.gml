if (invincible != true) {
	hp -= obj_player.dmg;
	invincible = true;
	alarm[1] = 40;
	
	if (other.sprite_index == spr_player_attack) {
	kb_x = 10 * sign(x - other.x);
	kb_y = 10 * sign(y - other.y);
	state_set(states.knockback);
	path_delete(path);
	x += kb_x;
	y += kb_y;
	}
	
	else if (other.sprite_index == spr_player_spiritattack) {
		kb_x = 20 * sign(x - other.x);
		kb_y = 20 * sign(y - other.y);
		state_set(states.knockback);
		path_delete(path);
		x += kb_x;
		y += kb_y;
	}
	
	image_blend = c_red;
	moveable = false;
	alarm[0] = 1;
}