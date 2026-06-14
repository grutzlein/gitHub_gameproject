if (state.stateOnEnd != undefined) {
	state_set (state.stateOnEnd);
}

if (point_direction(x, y, obj_player.x, obj_player.y) >= 90 and point_direction(x, y, obj_player.x, obj_player.y) <= 270) {
		image_xscale = -1;
	}
	else {
		image_xscale = 1;	
	}
	
if (state == states.dead) {
	obj_player.add_xp(5);
	instance_destroy(self);
}