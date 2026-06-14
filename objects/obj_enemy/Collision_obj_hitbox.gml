if (invincible != true) {
	hp -= obj_player.dmg;
	invincible = true;
	alarm[1] = 60;
}