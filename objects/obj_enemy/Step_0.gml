if (hp <= 0) {
	state_set(states.dead);
	moveable = false;
	
}

dirToPlayer = point_direction(x, y, obj_player.x, obj_player.y);